#!/bin/bash
#set -o history -o histexpand
#echo !!

# https://stackoverflow.com/a/2236614/21294350

# run "~/CSAPP-3e-Solutions/site/content/compile.sh 2 xbyte g" instead of ". ~/CSAPP-3e-Solutions/site/content/compile.sh -c 2 -f xbyte -g" to avoid interpreted as positional arguments by "help source" or "exit current shell"

# https://stackoverflow.com/questions/2740906/how-to-access-command-line-arguments-of-the-caller-inside-a-function
# shopt -s extdebug
# function argv {
#    for a in ${BASH_ARGV[*]}; do
#       echo -n "$a "
#    done
#    echo
# }
# argv

# test() {
#    # echo -e "$* \n $@\n $?\n"
#    echo $@
#    # echo $*
# }
# test

# for i in $*; do
#    echo $i
# done
# echo $*
# echo $@

helpFunction() {
   echo ""
   echo "Usage: $0 chapter file (-g)"
   echo -e "\tThe argument order can't be changed"
   echo -e "\tDescription of what chapter is"
   echo -e "\tDescription of what file name is"
   echo -e "\t-g whether debug"
   #   exit 0 # Exit script after printing help
}
# if [ $1 == '-h' || $1 == '--help' ] ; then
#    helpFunction
#    exit 0
# fi
# if [ $3 == 'g'|| $3 == '-g' ] ; then
#    gdb $test_file
# fi
case $1 in
-h | --help)
   helpFunction
   exit 0
   ;;
esac
cd ~/CSAPP-3e-Solutions/site/content/"chapter$1"/code
test_file=$2
if [ -f $test_file.c ]; then
   gcc -g $test_file.c -o $test_file
   ./$test_file
else
   echo "current dir is $(pwd), no file $2"
   exit 0
fi
case $3 in
-g | g | --g)
   gdb $test_file
   ;;
esac

exit 0
