#!/bin/bash

if [ -z "$1" ]; then
	echo "Please specify the epub data root directory"
	exit
fi

for dir in `ls "$1"`
do   
  echo -e "\n<<<<<< $dir >>>>>>"  
  if [ -d "$1/$dir" ]; then
    sh validate-single.sh $1/$dir
  fi
done