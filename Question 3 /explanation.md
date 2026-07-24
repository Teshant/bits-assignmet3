# Question 3 – Explanation

## Program Objective

This program demonstrates file processing using Linux system calls instead of standard library file functions.

## Command Explanations

### cd ..

Moved to the parent directory.

### mkdir Question3

Created a folder for Question 3.

### cd Question3

Changed to the Question 3 directory.

### touch file_processing.c

Created the C source file.

### gcc file_processing.c -o file_processing

Compiles the C program and generates an executable.

### ./file_processing

Executes the compiled program.

### which gcc

Checks whether the GCC compiler is available.

### which cc

Checks whether the default C compiler is available.

### which clang

Checks whether the Clang compiler is available.

## How the Program Works

1. `open()` creates (or opens) the employee records file.
2. `write()` stores employee records in the file.
3. `lseek()` moves the file pointer to a specific position without rewriting the whole file.
4. `write()` updates the required record.
5. `read()` retrieves data from the file efficiently.
6. `close()` safely closes the file and releases system resources.

## Role of Linux System Calls

* **open()**: Opens or creates a file and returns a file descriptor.
* **write()**: Writes employee records directly to the file.
* **lseek()**: Moves the file pointer to a desired location for efficient updates and retrieval.
* **read()**: Reads data from any position in the file.
* **close()**: Closes the file descriptor and ensures resources are released.

## Note

The provided environment did not include a C compiler (`gcc`, `cc`, or `clang`), so compilation and execution could not be completed there. The source code is intended for a standard Linux environment with a C compiler installed.
