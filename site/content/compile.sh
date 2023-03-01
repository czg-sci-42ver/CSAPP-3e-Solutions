#!/bin/bash
#set -o history -o histexpand
#echo !!

#cd ~/CSAPP-3e-Solutions/site/content/"chapter$1"/code

#test_file=xbyte
#cd ~/CSAPP-3e-Solutions/site/content/chapter2/code
#pwd
#gcc -g $test_file.c -o $test_file;./$test_file

#pwd
# https://stackoverflow.com/a/2236614/21294350

# run ". ~/CSAPP-3e-Solutions/site/content/compile.sh 2 fits-bits" instead of "~/CSAPP-3e-Solutions/site/content/compile.sh 2 fits-bits" or "bash ~/CSAPP-3e-Solutions/site/content/compile.sh 2 fits-bits" to let "cd" valid
# run "~/CSAPP-3e-Solutions/site/content/compile.sh -c 2 -f xbyte -g" instead of ". ~/CSAPP-3e-Solutions/site/content/compile.sh -c 2 -f xbyte -g" to avoid interpreted as positional arguments by "help source"

test() {
   echo -e "$* \n $@\n $?\n"
   echo $@
   echo $*
}
# test
helpFunction() {
   echo ""
   echo "Usage: $0 -c chapter -f file (-g)"
   echo -e "\tThe argument order can't be changed"
   echo -e "\t-c Description of what chapter is"
   echo -e "\t-f Description of what file name is"
   echo -e "\t-g whether debug"
   #   exit 0 # Exit script after printing help
}
if [ $1 != '-c' ] || [ $3 != '-f' ]; then
   helpFunction
   exit 1
fi

while getopts "c:f:g" opt; do
   case "$opt" in
   c)
      chapter="$OPTARG"
      cd ~/CSAPP-3e-Solutions/site/content/"chapter$chapter"/code
      ;;
   f)
      file="$OPTARG"
      #pwd
      gcc -g $file.c -o $file
      ./$file
      ;;
   g)
      #pwd
      gdb $file
      ;;
   ?) helpFunction ;; # Print helpFunction in case parameter is non-existent
   esac
done
#pwd
if [ -z "$file" ] || [ -z "$chapter" ]; then
   echo "need file and chapter input"
   helpFunction
fi
#pwd
