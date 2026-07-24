# Question 5 – Recovery Mechanisms in vi

## Scenario

A software developer is editing a critical configuration file using **vi**. Before saving the file, the system crashes. vi provides several recovery mechanisms to recover unsaved work.

## Recovery Mechanisms

### 1. Swap Files

A swap file is automatically created while editing a file. If the system crashes, vi detects the swap file when the file is reopened and offers to recover the unsaved changes.

### 2. Undo History

The undo feature allows changes made during the current editing session to be reversed. However, the undo history is generally lost after an unexpected crash.

### 3. Registers

Registers temporarily store copied, deleted, and yanked text. They help during editing but are generally unavailable after a crash unless their contents were saved.

### 4. Backup Files

Backup files store the last saved version of the file. They help recover previously saved data if the original file becomes corrupted.

### 5. Auto-Recovery

When vi detects a swap file after a crash, it provides an automatic recovery option so that the user can restore unsaved work and save the recovered file.

## Most Reliable Recovery Strategy

The most reliable strategy is to use **swap files together with vi's auto-recovery feature**, supported by **backup files**.

### Justification

* Swap files automatically save editing information while the file is open.
* Auto-recovery allows vi to restore unsaved work after a crash.
* Backup files preserve the last saved version of the file as an additional safety measure.
* Undo history and registers are useful during an editing session but are generally unavailable after a crash.

Therefore, using **swap files, vi's auto-recovery mechanism, and backup files together** provides the most reliable way to recover a critical configuration file after a system failure.
