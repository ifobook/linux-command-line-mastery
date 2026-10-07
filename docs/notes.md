# Linux Command Line Mastery - Task 1 Notes

## Task 1: File Management

### Objective

Practice creating, copying, moving, deleting, viewing, and searching files and directories using standard Linux commands.

## Commands Practiced

| Command | Purpose |
|---|---|
| `touch` | Create empty files |
| `cp` | Copy files and directories |
| `mv` | Move or rename files |
| `rm` | Remove files |
| `rm -i` | Remove files with confirmation |
| `rm -r` | Recursively remove directories |
| `cat` | Display file contents |
| `less` | View files interactively |
| `head` | Display the beginning of a file |
| `tail` | Display the end of a file |
| `find` | Search for files and directories |
| `grep` | Search for text inside files |

## Observations

### touch

The `touch` command was used to create empty files.

### cp

The `cp` command was used to create a copy of an existing file.

### mv

The `mv` command was used both to rename a file and move a file into another directory.

### rm

The `rm` command permanently removes files. Care should be taken when using it because deleted files are not normally moved to a recycle bin.

### rm -i

The `rm -i` command provides an interactive confirmation before deleting a file.

### rm -r

The `rm -r` command removes directories and their contents recursively. It should be used carefully.

### cat

The `cat` command displays the contents of a file directly in the terminal.

### less

The `less` command allows large files to be viewed interactively without printing the entire file to the terminal at once.

### head and tail

`head` displays the beginning of a file while `tail` displays the end of a file. These commands are particularly useful when examining logs.

### find

The `find` command was used to locate files and directories based on their names and types.

### grep

The `grep` command was used to search for specific text patterns inside files.

## Troubleshooting

No major issues were encountered during Task 1.

## Task Status

- [x] Create files with `touch`
- [x] Copy files with `cp`
- [x] Move/rename files with `mv`
- [x] Delete files with `rm`
- [x] Practice `rm -i`
- [x] Practice `rm -r`
- [x] View files with `cat`
- [x] View files with `less`
- [x] Use `head`
- [x] Use `tail`
- [x] Search files with `find`
- [x] Search file contents with `grep`




# Task 2: Directory Navigation

## Objective

Practice navigating the filesystem using absolute and relative paths, creating nested directories, and exploring standard filesystem locations.

## Commands Practiced

| Command | Purpose |
|---|---|
| `pwd` | Display the current working directory |
| `cd` | Change the current directory |
| `cd ..` | Move to the parent directory |
| `cd -` | Return to the previous working directory |
| `cd ~` | Navigate to the user's home directory |
| `mkdir` | Create directories |
| `mkdir -p` | Create nested directories |
| `ls` | List directory contents |
| `find` | Search for files and directories |

## Absolute Paths

An absolute path starts from the filesystem root `/`.

Example:

```bash
cd /Users/macbookpro/devOps/linux-command-line-mastery


# Task 3: System Monitoring and Administration

## Objective

Inspect system health, monitor running processes, check disk and memory usage, inspect system uptime, identify users and groups, and practice file permissions and ownership.

## Process Monitoring

The following commands were used to inspect running processes:

```bash
ps aux
ps aux | head -20


# Task 4: Networking Basics

## Objective

Practice basic network troubleshooting and inspection using connectivity tests, network interface information, routing tables, and active network connections.

## Connectivity Testing

The local network stack was tested using:

```bash
ping -c 4 127.0.0.1


# Task 5: Pipes and Redirection

## Objective

Practice shell input/output redirection and command pipelines using `>`, `>>`, `2>`, pipes, `grep`, `awk`, `sort`, and `uniq`.

## Output Redirection

The `>` operator was used to create a file and redirect command output into it:

```bash
printf "Apple\nBanana\nOrange\nMango\n" > artifacts/pipes-redirection-test/fruits.txt


# Task 6: Shell Scripting

## Objective

Create and execute a reusable Bash script demonstrating variables, conditionals, loops, directory creation, output redirection, command substitution, system commands, and logging.

## Script

The reusable script is located at:

```text
scripts/system_report.sh
