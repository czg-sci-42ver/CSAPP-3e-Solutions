#!/bin/bash
#set DIR=~/automatic_command/init_ubuntu/gdb_repl/
#DIR="~/automatic_command/init_ubuntu/gdb_repl"
DIR="$HOME/automatic_command/init_ubuntu/gdb_repl"
set -o history -o histexpand
# echo $DIR

# https://stackoverflow.com/questions/26881742/how-to-print-define-value-in-gdb or https://developer.apple.com/library/archive/documentation/DeveloperTools/gdb/gdb/gdb_33.html
if gcc -g -ggdb3 $DIR/basic.c -o $DIR/basic; then
    # echo !!
    gdb $DIR/basic -ex "br 10" -ex "r"
fi
# echo !!
