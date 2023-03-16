#!/bin/bash
set -o history -o histexpand

index=1
BRL=-1
VERBOSE=0

has_arg() {
  if [[ $1 =~ [-] ]] || [[ -z $1 ]] || [[ $1 == ".c" ]]; then
    echo "need arg"
    exit 1
    return 1
  fi
  return 0
}

helpFunction() {
  echo ""
  echo "Usage: $0 -p chapter file (-g| -gg num) -l link_lib "
  echo -e "\tThe argument order can't be changed"
  echo -e "\tDescription of what chapter is"
  echo -e "\tDescription of what file name is"
  echo -e "\t-g whether debug"
  echo -e "\tnum breakpoint line number"
  #   exit 0 # Exit script after printing help
}

# echo $#
# echo $i
# https://stackoverflow.com/questions/10749976/bash-scripting-n-th-parameter-of-when-the-index-is-a-variable
while [[ $index -le $# ]]; do
  # echo "arg " "${!i}"
  # echo "${$i++}"
  case ${!index} in
  -v)
    VERBOSE=1
    ;;
  -g)
    DEBUG=1
    ;;
  -gg)
    DEBUG=1
    ((index++))
    BRL=${!index}
    # if [[ $BRL =~ [-] ]]; then
    #   echo "need br line"
    #   exit 1
    # fi
    has_arg $BRL
    ;;
  -l)
    ((index++))
    # files+=("${!index}")
    files_suf+=("${!index}.c")
    # LINK=1
    has_arg ${files_suf[@]}
    ;;
  -h)
    helpFunction
    exit 0
    ;;
  -c)
    cd ~/CSAPP-3e-Solutions/site/content/creference
    ;;
  -r)
    cd ~/CSAPP-3e-Solutions/site/content/gdb_repl
    ;;
  -p)
    ((index++))
    cd ~/CSAPP-3e-Solutions/site/content/"chapter${!index}"/code
    has_arg ${!index}
    ;;
  -*)
    opts+=("${!index}")
    ;;
  *)
    files_suf+=("${!index}.c")
    files+=("${!index}")
    if [[ $VERBOSE -ne 0 ]]; then
      if [[ "$(declare -p files)" =~ "declare -a" ]]; then
        echo "declare " $(declare -p files)
        echo array "${files[@]}"
      else
        echo no array $files
      fi
    fi
    # echo "$files[@]"
    # echo "files loc " $index
    # for j in $files; do
    # done
    ;;
  esac
  ((index++))
  # echo $i
done

if [[ $VERBOSE -ne 0 ]]; then
  echo "file num " "${#files[@]}"
  if [[ ${#files[@]} -ge 1 ]]; then
    echo "files" "${files[@]}"
  fi
  if [[ ${files_suf[@]} != ".c" ]]; then
    echo "suf" "${files_suf[@]}"
  fi
fi

FILE_EXIST=0

for file in "${files_suf[@]}"; do
  if [[ -f "$file" ]]; then
    FILE_EXIST=1
  else
    FILE_EXIST=0
  fi
done

if [[ -n "${files_suf[@]}" ]] && [[ -n "${files[@]}" ]]; then
  if [[ $FILE_EXIST -ne 0 ]]; then
    # echo "gcc $CFLAGS -g -ggdb3 ${files_suf[@]} -o ${files[@]}"
    if gcc $CFLAGS -g -ggdb3 ${files_suf[@]} -o ${files[@]}; then
      ./$files
      if [[ $DEBUG -ne 0 ]]; then
        if [[ $BRL -ne -1 ]]; then
          gdb $files -ex "br $BRL" -ex "r"
          exit 0
        else
          gdb $files
          exit 0
        fi
      fi
    else
      echo "compile wrong"
      exit 1
    fi
  else
    echo -e "current dir is $(pwd), ${files_suf[@]} not all exist, but has files:\n\n$(ls . | head)\n..."
    exit 1
  fi
else
  echo "please give files and output files"
  exit 1
fi
# echo "${@:1:1}"
# echo "${@:$#-1}"

# echo $@

# remove used argument https://stackoverflow.com/questions/23656267/how-to-remove-nth-element-from-command-arguments-in-bash

# echo "test " $@
exit 0
