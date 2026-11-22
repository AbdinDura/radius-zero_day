# Task 3: Finding Files & Searching File Contents

## Purpose of find
find searches directory trees based on criteria such as file name (-name), file type (-type f for files or -type d for directories), and directory depth.

## Purpose of grep
grep searches inside files for lines matching a word or pattern, with options like -n (line numbers), -i (case-insensitive matching), -R (recursive directory search), and -H (show filenames).

## Finding a Filename vs. Searching Inside a File
- **Finding a filename (find ... -name ...)** locates files or folders by their names and paths in the filesystem without reading their internal text.
- **Searching inside a file (grep ...)** reads file contents line by line to find matching words or text patterns.

## Explanation of the Combined find and grep Command
The command find practice/search-lab -type f -name "*.txt" -exec grep -Hni "JavaScript" {} + first finds all .txt files inside practice/search-lab, and then runs grep -Hni "JavaScript" on those matched files ({} +) to display the filename, line number, and matching line for every case-insensitive match of JavaScript.
