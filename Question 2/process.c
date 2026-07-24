```c
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>
#include <sys/wait.h>

int main() {
    pid_t pid = fork();

    if (pid == 0) {
        printf("Child Process Started. PID = %d\n", getpid());
        sleep(10);
        printf("Child Process Finished.\n");
        exit(0);
    }
    else if (pid > 0) {
        printf("Parent Process. PID = %d\n", getpid());

        sleep(3);

        printf("Child is unresponsive. Sending SIGKILL...\n");
        kill(pid, SIGKILL);

        wait(NULL);

        printf("Zombie process prevented.\n");
    }
    else {
        printf("Fork Failed!\n");
    }

    return 0;
}
```
