# Question 2 – Explanation

## Program Objective

The program demonstrates process management in Linux using `fork()`, `wait()`, and `kill()`.

## Command Explanations

### cd ..

Moved to the parent directory to create a new folder for Question 2.

### mkdir Question2

Created a separate directory for all Question 2 files.

### cd Question2

Changed the current working directory to the Question2 folder.

### touch process.c

Created the C source file.

### gcc process.c -o process

Compiles the C source code and creates an executable named `process`.

### ./process

Runs the compiled program.

### which gcc

Checked whether the GCC compiler was installed.

### which cc

Checked whether the default C compiler was available.

### which clang

Checked whether the Clang compiler was installed.

## How the Program Works

1. The parent process creates a child process using `fork()`.
2. The child process simulates a long-running task by sleeping for 10 seconds.
3. The parent waits for 3 seconds and assumes the child has become unresponsive.
4. The parent sends the `SIGKILL` signal using `kill()` to terminate the child process.
5. The parent calls `wait()` to collect the child's exit status and prevent a zombie process.
6. Status messages are displayed throughout execution to show the process lifecycle.

## Explanation

* **fork()** creates a new child process.
* **wait()** allows the parent process to wait for the child to terminate and removes the child from the process table, preventing zombie processes.
* **kill()** sends the `SIGKILL` signal to terminate an unresponsive child process.
* Together, these system calls help the operating system manage processes efficiently by creating child processes, monitoring them, cleaning up terminated processes, and terminating unresponsive processes when necessary.

## Note

The provided execution environment did not contain a C compiler (`gcc`, `cc`, or `clang`), so the program could not be compiled or executed there. The source code remains valid and can be compiled in any standard Linux environment with a C compiler installed.
