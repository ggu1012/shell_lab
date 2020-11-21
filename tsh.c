
/*
 * tsh - A tiny shell program with job control
 *
 * 2016142212 Kim Seonghoon 
 */
#include <assert.h>
#include <ctype.h>
#include <errno.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

/* Misc manifest constants */
#define MAXLINE 1024   /* max line size */
#define MAXARGS 128    /* max args on a command line */
#define MAXJOBS 16     /* max jobs at any point in time */
#define MAXJID 1 << 16 /* max job ID */

/* Job states */
#define UNDEF 0 /* undefined */
#define FG 1    /* running in foreground */
#define BG 2    /* running in background */
#define ST 3    /* stopped */

/* Process exit flags */
#define EXIT 1
#define INTR 2
#define TSTP 3

/*
 * Jobs states: FG (foreground), BG (background), ST (stopped)
 * Job state transitions and enabling actions:
 *     FG -> ST  : ctrl-z
 *     ST -> FG  : fg command
 *     ST -> BG  : bg command
 *     BG -> FG  : fg command
 * At most 1 job can be in the FG state.
 */

/* Global variables */
extern char** environ;   /* defined in libc */
char prompt[] = "tsh> "; /* command line prompt (DO NOT CHANGE) */
int verbose = 0;         /* if true, print additional output */
int nextjid = 1;         /* next job ID to allocate */
char sbuf[MAXLINE];      /* for composing sprintf messages */

struct job_t
{                        /* The job struct */
  pid_t pid;             /* job PID */
  int jid;               /* job ID [1, 2, ...] */
  int state;             /* UNDEF, BG, FG, or ST */
  char cmdline[MAXLINE]; /* command line */
};
struct job_t jobs[MAXJOBS]; /* The job list */
/* End global variables */

// Flag for SIGCHLD
volatile sig_atomic_t flag;

/* Function prototypes */

/* Here are the functions that you will implement */
void
eval(char* cmdline);
int
builtin_cmd(char** argv);
void
do_bgfg(char** argv);
void
waitfg(pid_t pid);

void
sigchld_handler(int sig);
void
sigtstp_handler(int sig);
void
sigint_handler(int sig);

/* Here are helper routines that we've provided for you */
int
parseline(const char* cmdline, char** argv);
void
sigquit_handler(int sig);

void
clearjob(struct job_t* job);
void
initjobs(struct job_t* jobs);
int
maxjid(struct job_t* jobs);
int
addjob(struct job_t* jobs, pid_t pid, int state, char* cmdline);
int
deletejob(struct job_t* jobs, pid_t pid);
pid_t
fgpid(struct job_t* jobs);
struct job_t*
getjobpid(struct job_t* jobs, pid_t pid);
struct job_t*
getjobjid(struct job_t* jobs, int jid);
int
pid2jid(pid_t pid);
void
listjobs(struct job_t* jobs);

void
usage(void);
void
unix_error(char* msg);
void
app_error(char* msg);
typedef void
handler_t(int);
handler_t*
Signal(int signum, handler_t* handler);

/*
 * main - The shell's main routine
 */
int
main(int argc, char** argv)
{
  char c;
  char cmdline[MAXLINE];
  int emit_prompt = 1; /* emit prompt (default) */

  /* Redirect stderr to stdout (so that driver will get all output
   * on the pipe connected to stdout) */
  dup2(1, 2);

  /* Parse the command line */
  while ((c = getopt(argc, argv, "hvp")) != EOF) {
    switch (c) {
      case 'h': /* print help message */
        usage();
        break;
      case 'v': /* emit additional diagnostic info */
        verbose = 1;
        break;
      case 'p':          /* don't print a prompt */
        emit_prompt = 0; /* handy for automatic testing */
        break;
      default:
        usage();
    }
  }

  /* Install the signal handlers */

  /* These are the ones you will need to implement */
  Signal(SIGINT, sigint_handler);   /* ctrl-c */
  Signal(SIGTSTP, sigtstp_handler); /* ctrl-z */
  Signal(SIGCHLD, sigchld_handler); /* Terminated or stopped child */

  /* This one provides a clean way to kill the shell */
  Signal(SIGQUIT, sigquit_handler);

  /* Initialize the job list */
  initjobs(jobs);

  /* Execute the shell's read/eval loop */
  while (1) {
    /* Read command line */
    if (emit_prompt) {
      printf("%s", prompt);
      fflush(stdout);
    }
    if ((fgets(cmdline, MAXLINE, stdin) == NULL) && ferror(stdin))
      app_error("fgets error");
    if (feof(stdin)) { /* End of file (ctrl-d) */
      fflush(stdout);
      exit(0);
    }

    /* Evaluate the command line */
    eval(cmdline);
    fflush(stdout);
    fflush(stdout);
  }

  exit(0); /* control never reaches here */
}

/*
 * eval - Evaluate the command line that the user has just typed in
 *
 * If the user has requested a built-in command (quit, jobs, bg or fg)
 * then execute it immediately. Otherwise, fork a child process and
 * run the job in the context of the child. If the job is running in
 * the foreground, wait for it to terminate and then return.  Note:
 * each child process must have a unique process group ID so that our
 * background children don't receive SIGINT (SIGTSTP) from the kernel
 * when we type ctrl-c (ctrl-z) at the keyboard.
 */
void
eval(char* cmdline)
{
  int parse_result;
  int invalidcmd = 0;

  // signal mask for blocking
  sigset_t chld_block;
  sigset_t prev;

  // first, make empty mask
  if (sigemptyset(&chld_block) < 0)
    unix_error("Failed to set empty signal mask\n");
  // add SIGCHLD mask
  if (sigaddset(&chld_block, SIGCHLD) < 0)
    unix_error("Failed to add signal mask\n");

  // ready to use sigprocmask for blocking SIGCHLD

  char* argv[MAXARGS];
  parse_result = parseline(cmdline, argv);

  // fginit = 1 for initial foreground process
  int fginit = !(parse_result == 1);

  // No argument was recieved
  if (argv[0] == NULL)
    return;

  // User command. builtin_cmd return value = 0
  if (builtin_cmd(argv) == 0) {
    // chld_block SIGCHLD before fork()
    assert(!sigprocmask(SIG_BLOCK, &chld_block, &prev));
    int pid = fork();
    // child process. runs command line
    if (pid == 0) {
      // setpgid for setting new process group
      setpgid(0, 0);
      // execute command.
      // if cmd is invalid, exec would return -1
      if ((invalidcmd = execvp(argv[0], argv) == -1)) {
        fprintf(stderr, "%s : Command not found.\n", argv[0]);
        exit(0);
      }
      // fork error
    } else if (pid < 0) {
      unix_error("Fork Failed\n");
      // parent process. wait for child process to end
      // and if ended successfully, deletejob
    } else {
      // avoid addjob with invalid command
      if (!invalidcmd) {
        // add foreground job
        if (fginit)
          addjob(jobs, pid, FG, cmdline);
        // add background job
        else
          addjob(jobs, pid, BG, cmdline);
      }

      // unblock SIGCHLD after addjob is complete
      assert(!sigprocmask(SIG_SETMASK, &prev, NULL));

      // child process job
      struct job_t* job = getjobpid(jobs, pid);
      int jid = job->jid;

      // foreground job
      if (job->state == FG) {
        // waitfg to set the order as child -> parent.
        waitfg(pid);
      }

      // background job
      else {
        // Print job info when the job is finished
        printf("[%d] (%d) %s", jid, pid, job->cmdline);
      }

      // reset option values for the next eval.
      invalidcmd = 0;
    }
  }
  return;
}

/*
 * parseline - Parse the command line and build the argv array.
 *
 * Characters enclosed in single quotes are treated as a single
 * argument.  Return true if the user has requested a BG job, false if
 * the user has requested a FG job.
 */
int
parseline(const char* cmdline, char** argv)
{
  static char array[MAXLINE]; /* holds local copy of command line */
  char* buf = array;          /* ptr that traverses command line */
  char* delim;                /* points to first space delimiter */
  int argc;                   /* number of args */
  int bg;                     /* background job? */

  strcpy(buf, cmdline);
  buf[strlen(buf) - 1] = ' ';   /* replace trailing '\n' with space */
  while (*buf && (*buf == ' ')) /* ignore leading spaces */
    buf++;

  /* Build the argv list */
  argc = 0;
  if (*buf == '\'') {
    buf++;
    delim = strchr(buf, '\'');
  } else {
    delim = strchr(buf, ' ');
  }

  while (delim) {
    argv[argc++] = buf;
    *delim = '\0';
    buf = delim + 1;
    while (*buf && (*buf == ' ')) /* ignore spaces */
      buf++;

    if (*buf == '\'') {
      buf++;
      delim = strchr(buf, '\'');
    } else {
      delim = strchr(buf, ' ');
    }
  }
  argv[argc] = NULL;

  if (argc == 0) /* ignore blank line */
    return 1;

  /* should the job run in the background? */
  if ((bg = (*argv[argc - 1] == '&')) != 0) {
    argv[--argc] = NULL;
  }
  return bg;
}

/*
 * builtin_cmd - If the user has typed a built-in command then execute
 *    it immediately.
 */
int
builtin_cmd(char** argv)
{
  // for getting wait status
  // int status;

  // quit
  if (strncmp(argv[0], "quit", 4) == 0) {
    exit(0);
  }

  // jobs
  else if (strncmp(argv[0], "jobs", 4) == 0) {
    listjobs(jobs);
    return 1;
  }

  // bg and fg
  else if ((strncmp(argv[0], "bg", 2) & strncmp(argv[0], "fg", 2)) == 0) {
    do_bgfg(argv);
    return 1;
  }

  return 0; /* not a builtin command */
}

/*
 * do_bgfg - Execute the builtin bg and fg commands
 */
void
do_bgfg(char** argv)
{

  // in case the job is not set
  if (argv[1] == 0) {
    fprintf(stderr, "%s command requires PID or %%jobid argument\n", argv[0]);
    return;
  }

  // information for objective job
  int myjid;
  struct job_t* myjob;
  int mypid;

  // interpret the process/job number
  // given job is expressed as jid
  if (strncmp(argv[1], "%", 1) == 0) {
    // job infos
    myjid = strtol(++argv[1], NULL, 10);
    myjob = getjobjid(jobs, myjid);

    // if entered jid number is bigger than maxjid,
    // print error
    if (myjid > maxjid(jobs)) {
      fprintf(stderr, "%%%d : No such job\n", myjid);
      return;
    }

    mypid = myjob->pid;

    // given job is expressed as pid
  } else {
    // save errno which will be used for strtol
    int olderr = errno;

    mypid = strtol(argv[1], NULL, 10);

    // Error. Given id is not a number
    if (errno != 0 && mypid == 0) {
      fprintf(stderr, "argument must be a PID or %%jobid\n");
      errno = olderr;
      return;
    }

    myjob = getjobpid(jobs, mypid);

    // Error.  No such process with given id
    if (getjobpid(jobs, mypid) == NULL) {
      fprintf(stderr, "(%d): No such process\n", mypid);
      return;
    }

    myjid = myjob->jid;

    // given argument is not a number

    // if the given job is already in foreground, return.
    if (myjob->state == FG) {
      fprintf(stderr, "(%d): Already in foreground\n", mypid);
      return;
    }
  }

  /* fg implementation */
  if (strncmp(argv[0], "fg", 2) == 0) {

    // stop myjob
    kill(-mypid, SIGTSTP);

    // change state
    myjob->state = FG;

    // send SIGCONT signal to job
    kill(-mypid, SIGCONT);

    // wait until foreground job, which means that
    //  myjob is finished
    waitfg(fgpid(jobs));

    return;
  }

  /* bg implementation */
  else if (strncmp(argv[0], "bg", 2) == 0) {

    // change to background state
    myjob->state = BG;
    printf("[%d] (%d) %s", myjid, mypid, myjob->cmdline);

    // send SIGCONT signal to job
    kill(-mypid, SIGCONT);
  }

  return;
}

/*
 * waitfg - Block until process pid is no longer the foreground process
 */
void
waitfg(pid_t pid)
{

  // child process job
  struct job_t* job = getjobpid(jobs, pid);
  int jid = job->jid;

  // avoid the case with no foreground job
  if (fgpid(jobs) == 0)
    return;

  // busy-loop until pid is not foreground job pid
  while (pid == fgpid(jobs))
    sleep(1);

  // when the foreground process changed its process,
  // print out log, exit status is determined by 'flag' in sigchld_handler
  switch (flag) {
      // Ctrl + Z. SIGTSTP
    case TSTP:
      printf("Job [%d] (%d) is stopped by signal %d\n", jid, pid, SIGTSTP);
      break;

      // Ctrl + C. SIGINT
    case INTR:
      printf("Job [%d] (%d) is terminated by signal %d\n", jid, pid, SIGINT);
      break;

    case EXIT:
      break;
  }

  return;
}

/*****************
 * Signal handlers
 *****************/

/*
 * sigchld_handler - The kernel sends a SIGCHLD to the shell whenever
 *     a child job terminates (becomes a zombie), or stops because it
 *     received a SIGSTOP or SIGTSTP signal. The handler reaps all
 *     available zombie children, but doesn't wait for any other
 *     currently running children to terminate.
 */

void
sigchld_handler(int sig)
{
  int pid;
  int status;

  // set MASK to avoid child signals(SIGCHLD, SIGINT, SIGTSTP)
  // inside the handler
  sigset_t intr, prev;

  if (sigemptyset(&intr) < 0)
    unix_error("Failed to make empty signal set\n");
  if (sigaddset(&intr, SIGCHLD) < 0)
    unix_error("Failed to add signal mask\n");
  if (sigaddset(&intr, SIGINT) < 0)
    unix_error("Failed to add signal mask\n");
  if (sigaddset(&intr, SIGTSTP) < 0)
    unix_error("Failed to add signal mask\n");

  // signal block
  assert(!sigprocmask(SIG_BLOCK, &intr, &prev));

  // store errno
  int olderrno = errno;

  // reap all child processes
  while ((pid = waitpid(-1, &status, WNOHANG | WUNTRACED)) > 0) {

    getjobpid(jobs, pid)->state = ST;

    // handling SIGINT
    if (WTERMSIG(status) == SIGINT) {
      flag = INTR;
      deletejob(jobs, pid);
      return;
    }

    // handling SIGTSTP
    if (WIFSTOPPED(status)) {
      flag = TSTP;
      return;
    }

    // Normal exit
    flag = EXIT;
    deletejob(jobs, pid);
    return;
  }

  // restore errno
  errno = olderrno;

  // signal unblock
  assert(!sigprocmask(SIG_SETMASK, &prev, NULL));

  return;
}

/*
 * sigint_handler - The kernel sends a SIGINT to the shell whenver the
 *    user types ctrl-c at the keyboard.  Catch it and send it along
 *    to the foreground job.
 */
void
sigint_handler(int sig)
{
  // sig = SIGINT
  pid_t intpid;
  // if there is no foreground jobs,
  // SIGINT handler should not be executed
  // so, check if there is foreground job
  if ((intpid = fgpid(jobs)) != 0) {
    kill(-intpid, sig);
  }
  return;
}

/*
 * sigtstp_handler - The kernel sends a SIGTSTP to the shell whenever
 *     the user types ctrl-z at the keyboard. Catch it and suspend the
 *     foreground job by sending it a SIGTSTP.
 */
void
sigtstp_handler(int sig)
{
  // sig = SIGTSTP
  pid_t intpid;

  // if there is no foreground jobs,
  // SIGINT handler should not be executed
  // so, check if there is foreground job
  if ((intpid = fgpid(jobs)) != 0) {
    kill(-intpid, sig);
  }
  return;
}

/*********************
 * End signal handlers
 *********************/

/***********************************************
 * Helper routines that manipulate the job list
 **********************************************/

/* clearjob - Clear the entries in a job struct */
void
clearjob(struct job_t* job)
{
  job->pid = 0;
  job->jid = 0;
  job->state = UNDEF;
  job->cmdline[0] = '\0';
}

/* initjobs - Initialize the job list */
void
initjobs(struct job_t* jobs)
{
  int i;

  for (i = 0; i < MAXJOBS; i++)
    clearjob(&jobs[i]);
}

/* maxjid - Returns largest allocated job ID */
int
maxjid(struct job_t* jobs)
{
  int i, max = 0;

  for (i = 0; i < MAXJOBS; i++)
    if (jobs[i].jid > max)
      max = jobs[i].jid;
  return max;
}

/* addjob - Add a job to the job list */
int
addjob(struct job_t* jobs, pid_t pid, int state, char* cmdline)
{
  int i;

  if (pid < 1)
    return 0;

  for (i = 0; i < MAXJOBS; i++) {
    if (jobs[i].pid == 0) {
      jobs[i].pid = pid;
      jobs[i].state = state;
      jobs[i].jid = nextjid++;
      if (nextjid > MAXJOBS)
        nextjid = 1;
      strcpy(jobs[i].cmdline, cmdline);
      if (verbose) {
        printf(
          "Added job [%d] %d %s\n", jobs[i].jid, jobs[i].pid, jobs[i].cmdline);
      }
      return 1;
    }
  }
  printf("Tried to create too many jobs\n");
  return 0;
}

/* deletejob - Delete a job whose PID=pid from the job list */
int
deletejob(struct job_t* jobs, pid_t pid)
{
  int i;

  if (pid < 1)
    return 0;

  for (i = 0; i < MAXJOBS; i++) {
    if (jobs[i].pid == pid) {
      clearjob(&jobs[i]);
      nextjid = maxjid(jobs) + 1;
      return 1;
    }
  }
  return 0;
}

/* fgpid - Return PID of current foreground job, 0 if no such job */
pid_t
fgpid(struct job_t* jobs)
{
  int i;

  for (i = 0; i < MAXJOBS; i++)
    if (jobs[i].state == FG)
      return jobs[i].pid;
  return 0;
}

/* getjobpid  - Find a job (by PID) on the job list */
struct job_t*
getjobpid(struct job_t* jobs, pid_t pid)
{
  int i;

  if (pid < 1)
    return NULL;
  for (i = 0; i < MAXJOBS; i++)
    if (jobs[i].pid == pid)
      return &jobs[i];
  return NULL;
}

/* getjobjid  - Find a job (by JID) on the job list */
struct job_t*
getjobjid(struct job_t* jobs, int jid)
{
  int i;

  if (jid < 1)
    return NULL;
  for (i = 0; i < MAXJOBS; i++)
    if (jobs[i].jid == jid)
      return &jobs[i];
  return NULL;
}

/* pid2jid - Map process ID to job ID */
int
pid2jid(pid_t pid)
{
  int i;

  if (pid < 1)
    return 0;
  for (i = 0; i < MAXJOBS; i++)
    if (jobs[i].pid == pid) {
      return jobs[i].jid;
    }
  return 0;
}

/* listjobs - Print the job list */
void
listjobs(struct job_t* jobs)
{
  int i;

  for (i = 0; i < MAXJOBS; i++) {
    if (jobs[i].pid != 0) {
      printf("[%d] (%d) ", jobs[i].jid, jobs[i].pid);
      switch (jobs[i].state) {
        case BG:
          printf("Running ");
          break;
        case FG:
          printf("Foreground ");
          break;
        case ST:
          printf("Stopped ");
          break;
        default:
          printf(
            "listjobs: Internal error: job[%d].state=%d ", i, jobs[i].state);
      }
      printf("%s", jobs[i].cmdline);
    }
  }
}
/******************************
 * end job list helper routines
 ******************************/

/***********************
 * Other helper routines
 ***********************/

/*
 * usage - print a help message
 */
void
usage(void)
{
  printf("Usage: shell [-hvp]\n");
  printf("   -h   print this message\n");
  printf("   -v   print additional diagnostic information\n");
  printf("   -p   do not emit a command prompt\n");
  exit(1);
}

/*
 * unix_error - unix-style error routine
 */
void
unix_error(char* msg)
{
  fprintf(stdout, "%s: %s\n", msg, strerror(errno));
  exit(1);
}

/*
 * app_error - application-style error routine
 */
void
app_error(char* msg)
{
  fprintf(stdout, "%s\n", msg);
  exit(1);
}

/*
 * Signal - wrapper for the sigaction function
 */
handler_t*
Signal(int signum, handler_t* handler)
{
  struct sigaction action, old_action;

  action.sa_handler = handler;
  sigemptyset(&action.sa_mask); /* chld_block sigs of type being handled */
  action.sa_flags = SA_RESTART; /* restart syscalls if possible */

  if (sigaction(signum, &action, &old_action) < 0)
    unix_error("Signal error");
  return (old_action.sa_handler);
}

/*
 * sigquit_handler - The driver program can gracefully terminate the
 *    child shell by sending it a SIGQUIT signal.
 */
void
sigquit_handler(int sig)
{
  printf("Terminating after receipt of SIGQUIT signal\n");
  exit(1);
}
