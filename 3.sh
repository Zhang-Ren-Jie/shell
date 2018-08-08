# !/bin/bash

MYDATE=`date +%F'-'%T'-'%w`
MYSQL_PATH=/home/zrj/shell/data #指定的目录
LOG_FILE=/home/zrj/shell/data/exec_${MYDATE}.log

read -p "创建表（C）/删除表（D）:" answer
case $answer in
(C | c)
    echo "开始建表。。。。。。"

    read -p "建table,建index,建syn[1/2/3]?" table
    case $table in
    (1)
        echo "开始建table。。。。。。"
        for file in ${MYSQL_PATH}/*
        do
        if [ -f "$file" ] ; then
         filename=`echo ${file##*/}`
         basename=`echo ${filename%.*}`
         basenames=`echo ${filename:0:5}`
         extension=`echo ${filename##*.}`
          if [ $extension = "table" ] ; then
              echo "filename2 : $filename"
            if [ $basenames = asd_c ] ; then
              echo "filename3 : $filename"
            fi
          fi
        fi
        done
        ;;
    (2)
        echo "开始建index。。。。。。"
        for file in ${MYSQL_PATH}/*
        do
        if [ -f "$file" ] ; then
         filename=`echo ${file##*/}`
         basename=`echo ${filename%.*}`
         basenames=`echo ${filename:0:5}`
         extension=`echo ${filename##*.}`
          if [ $extension = "index" ] ; then
              echo "filename2 : $filename"
            if [ $basenames = asd_c ] ; then
              echo "filename3 : $filename"
            fi
          fi
        fi
        done
        ;;
    (3)
        echo "开始建syn。。。。。。"
        for file in ${MYSQL_PATH}/*
        do
        if [ -f "$file" ] ; then
         filename=`echo ${file##*/}`
         basename=`echo ${filename%.*}`
         basenames=`echo ${filename:0:5}`
         extension=`echo ${filename##*.}`
          if [ $extension = "syn" ] ; then
              echo "filename2 : $filename"
            if [ $basenames = asd_c ] ; then
              echo "filename3 : $filename"
            fi
          fi
        fi
        done
        ;;
    esac
    ;;
(D | d)
    echo "开始删表。。。。。。"
    read -p "删table,删index,删syn[1/2/3]?" table
    case $table in
    (1)
        echo "开始删table。。。。。。"
        for file in ${MYSQL_PATH}/*
        do
        if [ -f "$file" ] ; then
         filename=`echo ${file##*/}`
         basename=`echo ${filename%.*}`
         basenames=`echo ${filename:0:5}`
         extension=`echo ${filename##*.}`
          if [ $extension = "table" ] ; then
              echo "filename2 : $filename"
            if [ $basenames = asd_c ] ; then
              echo "filename3 : $filename"
            fi
          fi
        fi
        done
        ;;
    (2)
        echo "开始删index。。。。。。"
        for file in ${MYSQL_PATH}/*
        do
        if [ -f "$file" ] ; then
         filename=`echo ${file##*/}`
         basename=`echo ${filename%.*}`
         basenames=`echo ${filename:0:5}`
         extension=`echo ${filename##*.}`
          if [ $extension = "index" ] ; then
              echo "filename2 : $filename"
            if [ $basenames = asd_c ] ; then
              echo "filename3 : $filename"
            fi
          fi
        fi
        done
        ;;
    (3)
        echo "开始删syn。。。。。。"
        for file in ${MYSQL_PATH}/*
        do
        if [ -f "$file" ] ; then
         filename=`echo ${file##*/}`
         basename=`echo ${filename%.*}`
         basenames=`echo ${filename:0:5}`
         extension=`echo ${filename##*.}`
          if [ $extension = "syn" ] ; then
              echo "filename2 : $filename"
            if [ $basenames = asd_c ] ; then
              echo "filename3 : $filename"
            fi
          fi
        fi
        done
        ;;
    esac
    ;;
(*)
    echo "拜拜"
    ;;
esac


