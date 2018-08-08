#!/bin/bash
#execute all script in specified directory
MYDATE=`date +%F'-'%T'-'%w`
MYSQL_PATH=/home/zrj/shell/data #指定的目录
LOG_FILE=/home/zrj/shell/data/exec_${MYDATE}.log

for file in ${MYSQL_PATH}/*
do
if [ -f "$file" ] ; then
filename=`echo ${file##*/}`
basename=`echo ${filename%.*}`
basenames=`echo ${filename:0:5}`
extension=`echo ${filename##*.}`
#  echo "filename1 : $filename"
#  echo "basename1 : $basename"
#  echo "extension1 : $extension"
#  echo "basename3 : $basenames"
  if [ $extension = "table" ] ; then
#  echo "filename2 : $filename"
      if [ $basenames = asd_c ] ; then
        echo "filename3 : $filename"
      fi
  fi
fi
done
