#!/usr/bin/env bash 

# added alias cdbash to cd to this directory


# defining functions

#dve="Hello"

#count=hello 
#echo ${count:+1} 


#IFS=,
#echo "$*"


#sort -nr $1 | head -${2:-10}
#echo $1

pushd ()
{
	dirname=$1
	if [ -n "$dirname" ] && [ \( -d "$dirname" \) -a \
		\( -x "$dirname" \) ]; then
			DIR_STACK="$dirname ${DIR_STACK:-$PWD' '}"
			cd $dirname
			echo "$DIR_STACK"
	else
		echo "still in $PWD."
	fi
}

#pushd $1


while [ "$#" -gt 0 ]; do
  echo "Processing argument: $1"
  shift
done
