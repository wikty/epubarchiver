#!/bin/sh

if [ -z "$1" ]; then
	echo "Please specify the epub data directory"
	exit
fi

if [ -z "$2" ]; then
	targetDir=`pwd`
else
	targetDir=$2
fi

mkdir -p -- $targetDir

java -jar lib/epubcheck-3.0-RC-2/epubcheck-3.0-RC-2.jar $1 -mode exp -save

fn=`basename $1`
ext=".epub"
fullDate=`date +"%Y_%m_%d"`
mv "${fn}${ext}" "${targetDir}/${fn}-${fullDate}${ext}"