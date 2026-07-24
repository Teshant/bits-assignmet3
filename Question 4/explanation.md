# Question 4 – Explanation

## Objective

The command pipeline monitors a log file, extracts ERROR messages, stores them in a separate report file, and suppresses unnecessary error output.

## Command Explanations

### touch sample.log

Creates the sample log file.

### echo "... " >> sample.log

Appends log entries to the log file.

### cat sample.log

Displays the contents of the log file.

### touch error_report.txt

Creates the report file for storing ERROR messages.

### tail -n 10 sample.log

Displays the last 10 lines of the log file.

### grep "ERROR"

Filters only the lines containing the word ERROR.

### >

Redirects the filtered output into `error_report.txt`.

### 2>/dev/null

Suppresses error messages by redirecting standard error to `/dev/null`.

### cat error_report.txt

Displays the extracted ERROR messages.

## How the Pipeline Works

```bash
tail -n 10 sample.log | grep "ERROR" > error_report.txt 2>/dev/null
```

* `tail` reads the latest log entries.
* The pipe (`|`) sends the output directly to `grep`.
* `grep` extracts only ERROR messages.
* `>` saves the filtered output into `error_report.txt`.
* `2>/dev/null` hides unnecessary error messages.

This approach efficiently processes log files while keeping the terminal output clean.
