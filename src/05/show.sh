#!/bin/bash

show() {
    echo "Total number of folders (including all nested ones) = $COUNT_OF_DIRECTORIES"
    echo -e "TOP 5 folders of maximum size arranged in descending order (path and size):\n$FIVE_BIG_FOLDERS"
    echo "Total number of files =  $COUNT_OF_FILES"
    echo "Number of:"
    echo "Configuration files (with the .conf extension) = $CONF_FILES"
    echo "Text files = $TXT_FILES"
    echo "Executable files = $EXEC_FILES"
    echo "Log files (with the extension .log) = $LOG_FILES"
    echo "Archive files = $ARCH_FILES"
    echo "Symbolic links = $SYM_LINKS"
    echo -e "TOP 10 files of maximum size arranged in descending order (path, size and type):"
    topTen
    echo -e "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file):"
    topTenExec
}
