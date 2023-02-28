#!/bin/bash
set -o history -o histexpand
cd ~/CSAPP-3e-Solutions/site/content/"chapter$1"/code
echo !!
pwd
gcc -g $2.c -o $2;./$2
# https://stackoverflow.com/a/2236614/21294350
# run ". ~/CSAPP-3e-Solutions/site/content/compile.sh 2 fits-bits" instead of "~/CSAPP-3e-Solutions/site/content/compile.sh 2 fits-bits" or "bash ~/CSAPP-3e-Solutions/site/content/compile.sh 2 fits-bits" to let "cd" valid
