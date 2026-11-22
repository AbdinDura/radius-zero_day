# Task 2: File and Directory Management

## Commands Practised
- mkdir -p, touch
- echo, cat, head, tail, wc -l
- cp, mv, rm
- ls -l, find

## Explanation of Key Commands
- **mkdir -p**: Creates nested directories in one step and does not throw an error if parent folders already exist.
- **cp**: Copies a file from a source path to a destination while keeping the original file intact.
- **mv**: Moves files between directories or renames a file when the source and target are in the same directory.
- **rm**: Permanently deletes specified files from the filesystem.

## Difference Between > and >>
- **> (Overwrite redirection)** creates the target file if it does not exist or replaces all existing content in the file with the new command output.
- **>> (Append redirection)** creates the target file if it does not exist or appends new output to the end of the file while preserving existing content.

## File Permission Observations
Running ls -l showed regular files starting with - followed by permission bits such as rw-r--r--, indicating read and write permissions for the file owner and read-only access for group and other users, alongside file size and modification timestamps.
