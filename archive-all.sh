#!/bin/bash

if [ -z "$1" ]; then
	echo "Please specify the epub source root directory"
	exit
fi

if [ -z "$2" ]; then
	targetDir=`pwd`
else
	targetDir=$2
fi

for dir in `ls "$1"`
do   
  echo -e "\n<<<<<< $dir >>>>>>"  
  if [ -d "$1/$dir" ]; then
    sh archive-single.sh $1/$dir $targetDir
  fi
done