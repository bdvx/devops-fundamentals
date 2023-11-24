# Bash self-check questions:

1. From which directory will `cd ..` not move to the parent directory?
    Possible reasons:
    - Permission Issues: If the current user does not have permission to access the parent directory, the cd .. command might not work as expected.

    - Symbolic Links: If there are symbolic links involved, the behavior of cd .. might differ. It will follow symbolic links unless the -P option is used.

    - Alias or Function: It's possible that cd has been aliased or a custom function has been defined in the shell, changing its behavior.

    - Shell-Specific Configuration: The behavior of cd can be influenced by shell-specific configurations. For example, in Bash, you can customize the CD variable to change its behavior.

    - Top folder is your current folder: in this case the `cd ..` command will not work as expected

2. Are the paths `~/lab_1` and `~/lab_2` relative or
    absolute?

    The paths ~/lab_1 and ~/lab_2 are relative paths. The tilde (~) symbol is a shorthand representation of the user's home directory. Therefore, ~/lab_1 refers to a directory named lab_1 within the user's home directory, and ~/lab_2 similarly refers to a directory named lab_2 within the user's home directory.

    An absolute path, on the other hand, specifies the complete path from the root directory. For example, an absolute path might look like /home/username/lab_1, where /home/username/ is the complete path to the user's home directory.

    In summary, ~/lab_1 and ~/lab_2 are relative paths that are based on the user's home directory.

3. What are the two ways in which we could inspect the contents of the `/` directory
    from your own home directory.

    You can inspect the contents of the root directory (`/`) from your home directory using the following two common methods:

    1. **Absolute Path:**
    Use the absolute path to directly access the root directory from anywhere in the file system. In the command line, you can do this with the following command:

    ```bash
    ls /
    ```

    This command lists the contents of the root directory.

    2. **Relative Path with `..`:**
    Use a relative path to navigate to the parent directory (`/`) using `..`. From your home directory, you can do this with the following command:

    ```bash
    ls ..
    ```

    This command lists the contents of the parent directory, which is the root directory when executed from your home directory.

    Both of these methods will allow you to inspect the contents of the root directory from your home directory. Keep in mind that inspecting the root directory may require elevated permissions, so you might need to use `sudo` with these commands, depending on your system configuration.

4. What is the difference in behaviour of `ls`
    when run with the `-1` (digit) and `-l` (letter) options? How does
    `ls -1` differ from `ls` without options?

    The `ls` command is used to list files and directories in a directory. The `-1` and `-l` options modify the behavior of the `ls` command in different ways:

    1. **`ls -1`:**
    - This option (digit one) forces the output to be one entry per line.
    - It lists the names of files and directories without any additional details or formatting.
    - It's useful when you want a simple, vertical list of items in a directory.

    ```bash
    ls -1
    ```

    2. **`ls -l`:**
    - This option (letter ell) provides a detailed, long-form listing.
    - It displays additional information for each file or directory, such as permissions, owner, group, size, modification time, and name.
    - The detailed listing provides more information about the items in the directory.

    ```bash
    ls -l
    ```

    3. **`ls` without options:**
    - When `ls` is used without any options, it provides a basic listing with one entry per line, similar to `ls -1`.
    - However, the exact behavior can depend on the specific configuration of your shell and the version of `ls` installed on your system.

    ```bash
    ls
    ```

    In summary, the primary difference between `ls -1` and `ls -l` is the level of detail in the output. `ls -1` provides a simple, one-entry-per-line list, while `ls -l` offers a detailed, long-form listing. Using `ls` without options generally gives a basic list, but the exact behavior may vary.

5. If you want to hide the group names in the long listing format,
    which extra options would you need to set when searching within the home
    directory?

    If you want to hide the group names in the long listing format when searching within the home directory using the `ls` command, you can use the `-g` option. The `-g` option suppresses the display of the group names, showing only the owner name and other details.

    Here's the command:

    ```bash
    ls -l -g
    ```

    Alternatively, you can combine options to make it more concise:

    ```bash
    ls -lg
    ```

    This will give you a long listing format with the group names omitted. The columns in the output will include information like permissions, number of hard links, owner name, file size, modification time, and file or directory name, but not the group name.

6. Try accessing the documentation for the command `man` all the ways
    you can think of. Was there a difference in the output depending on
    how we asked to view the documentation? Could you access the
    documentation for the `ls` command all three ways?

    Accessing the documentation for a command using the `man` command can be done in a few ways. Here are three common methods:

    1. **Using `man` with the command name:**
    ```bash
    man command_name
    ```
    For example, to access the manual for the `ls` command:
    ```bash
    man ls
    ```

    2. **Using `man` with the manual section number:**
    ```bash
    man [section_number] command_name
    ```
    For example, to access the manual for the `ls` command in section 1 (user commands):
    ```bash
    man 1 ls
    ```

    3. **Using `man` with the `-k` option for keyword search:**
    ```bash
    man -k keyword
    ```
    For example, to search for commands related to "list":
    ```bash
    man -k list
    ```

    The output may vary slightly depending on how you access the documentation, but the content should generally be the same. Different sections may contain different types of information (e.g., user commands, system calls, library functions), and specifying the section number can help narrow down the search.

7. Complete the table.

    | **Command** | **Description of Function**                           |
    |-------------|--------------------------------------------------------|
    | `mv`        | Moves (or renames) files or directories.              |
    | `cp`        | Copies files or directories from one location to another. |
    | `rm`        | Removes (deletes) files or directories.               |
    | `mkdir`     | Creates a new directory (folder).                      |
    | `cat`       | Concatenates and displays the content of files.       |
    | `less`      | Displays the content of files one screen at a time, allowing navigation. |
    | `wc`        | Counts the number of lines, words, and characters in a file. |
    | `head`      | Displays the first few lines of a file.                |
    | `tail`      | Displays the last few lines of a file.                 |
    | `echo`      | Outputs text to the terminal.                          |
    | `cut`       | Removes sections from each line of a file.             |
    | `sort`      | Sorts lines of text files.                             |
    | `uniq`      | Filters adjacent matching lines from a sorted file.    |
    | `wget`      | Downloads files from the internet.                     |
    | `gunzip`    | Decompresses files compressed with gzip.               |



8. What is “stdin” an abbreviation of?

    "stdin" is an abbreviation of "standard input." In computing and programming, "stdin" refers to the standard input stream, which is a channel through which a program can receive input from the user or from another program. The standard input stream is often associated with the keyboard, and when a program reads from stdin, it reads input that the user types.

    In Unix-like operating systems, including Linux, stdin is represented by file descriptor 0. By default, many command-line programs take input from stdin unless input is redirected from a file or another source. It is one of the three standard streams, along with "stdout" (standard output) and "stderr" (standard error), which handle output and error messages, respectively.

9. Why does `echo ~` output `/home/user` when you execute it? What
    would it output if a user with a different home directory executed
    it? What happens when you execute `echo ~/*`?

    The `echo ~` command outputs the home directory of the current user. The tilde (`~`) is a shorthand representation for the home directory. So, when you execute `echo ~`, it expands to the home directory of the user who is running the command. In your example, it outputs `/home/user`, indicating that the current user's home directory is `/home/user`.

    If a user with a different home directory executes `echo ~`, it will output their own home directory. For example, if the username is "john," it might output something like `/home/john`.

    On the other hand, when you execute `echo ~/*`, the `*` is a wildcard character that represents all files and directories in the home directory. So, it outputs a list of all files and directories in the home directory of the current user. The `~` is still expanded to the home directory path. For instance, if you have files `file1.txt` and `file2.txt` in your home directory, it might output something like `/home/user/file1.txt /home/user/file2.txt`. The `*` is expanded by the shell to match all items in the home directory.

10. What does the `'^>'` mean in the grep command where
    some file is being searched?

    In the `grep` command, the `'^>'` is a regular expression pattern that is used to search for lines that begin with the `>` character in a file. Let's break down the components:

    - `^`: In a regular expression, the caret (`^`) is a metacharacter that asserts the start of a line. When used at the beginning of a pattern, it indicates that the pattern must match at the start of a line.

    - `>`: The greater-than symbol (`>`) is a literal character in this context. The pattern is looking for lines that start with this character.

    Putting them together, `'^>'` means "match lines that start with the greater-than symbol." In many contexts, the greater-than symbol (`>`) is often used to denote the beginning of a command prompt or to indicate output redirection.

    Here's an example of using `grep` with this pattern to search for lines starting with `>` in a file:

    ```bash
    grep '^>' filename.txt
    ```

    This command will display lines from `filename.txt` that start with the `>` character.

11. Before you executed the `chmod` command on the db.sh file,
    what were the permissions? What did these permissions allow you to
    do as a user, as members of your user group, as another user not in
    your user group?

    Let's consider the default permissions for new files with a umask of 0022, which db.sh had, resulting in file permissions of 644 (rw-r--r--):

    - **User (Owner):** The user has read and write permissions, allowing them to view and modify the content of the file.

    - **Group:** Members of the user's group have read-only permissions. They can view the contents of the file but cannot modify it.

    - **Others:** Users who are neither the owner nor in the group also have read-only permissions. They can read the file but cannot modify it.

    For new directories with a umask of 0022, resulting in directory permissions of 755 (rwxr-xr-x):

    - **User (Owner):** The user has read, write, and execute permissions. They can list the contents of the directory, create, modify, and delete files within it.

    - **Group:** Members of the user's group have read and execute permissions. They can list the contents of the directory and access files within it but cannot create or delete files.

    - **Others:** Users who are neither the owner nor in the group have read and execute permissions. They can list the contents of the directory and access files within it but cannot create or delete files.

    These default permissions strike a balance between providing the user with control over their files while restricting access to other users. Keep in mind that these defaults can be modified by individual users or system administrators using the `umask` command.

12. What did the 4 digit do to the permissions of db.sh with the
    command `chmod 774 db.sh`?

    The `chmod` command is used to change the permissions of a file in Unix-like operating systems. In the command `chmod 774 db.sh`, the three digits represent the permission settings for the user (owner), group, and others, respectively.

    Breaking down `chmod 774 db.sh`:

    - **User (Owner):** The first digit, '7', represents read (4) + write (2) + execute (1) permissions. Therefore, the owner of the file (`db.sh`) gets read, write, and execute permissions.

    - **Group:** The second digit, '7', also represents read (4) + write (2) + execute (1) permissions. So, the group members of the file get read, write, and execute permissions.

    - **Others:** The third digit, '4', represents read-only permissions. Therefore, other users who are not the owner or in the group get read-only permissions.

    Now, let's break down the effect of these permissions:

    - **User (Owner):** The owner can read, write, and execute the file (`db.sh`).

    - **Group:** Members of the group can read, write, and execute the file.

    - **Others:** Users who are neither the owner nor in the group can only read the file.

    These permission settings (774) grant the owner and group members full control over the file, while others have read-only access. It's a common set of permissions when you want the owner and group to have more privileges than other users.

13. Can you leave comments above the shebang line; `#!`?

    In Unix-like operating systems, the shebang line (`#!`) is used to indicate the interpreter for interpreting the script. Any text following the shebang is treated as a command and arguments. Comments are not typically allowed above the shebang line because the shebang line itself needs to be the first line of the file.

    The shebang line is typically followed by the path to the interpreter. For example:

    ```bash
    #!/bin/bash
    ```

    This indicates that the script should be interpreted using the Bash shell.

    If you want to include comments, they should be placed below the shebang line, for example:

    ```bash
    #!/bin/bash
    # This is a comment
    # More comments
    echo "Hello, World!"
    ```

    In the example above, the comments are placed after the shebang line and do not interfere with the functionality of the script. Placing comments above the shebang line may lead to unexpected behavior, and it's generally not a standard practice.