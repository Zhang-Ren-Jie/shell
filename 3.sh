# !/bin/bash

read -p "创建表（C）/删除表（D）:" answer
case $answer in
(C | c)
    echo "开始建表。。。。。。"
    read -p "建table,建index,建syn[1/2/3]?" table
    case $table in
    (1)
        echo "开始建table。。。。。。"
        find /home/zrj/shell -name 'asd_c*.table' -print
        ;;
    (2)
        echo "开始建index。。。。。。"
        find /home/zrj/shell -name 'asd_c*.table' -print
        ;;
    (3)
        echo "开始建syn。。。。。。"
        find /home/zrj/shell -name 'asd_c*.table' -print
        ;;
    esac
    ;;
(D | d)
    echo "开始删表。。。。。。"
    read -p "建table,建index,建syn[1/2/3]?" table
    case $table in
    (1)
        echo "开始建table。。。。。。"
        find /home/zrj/shell -name 'asd_c*.table' -print
        ;;
    (2)
        echo "开始建index。。。。。。"
        find /home/zrj/shell -name 'asd_c*.table' -print
        ;;
    (3)
        echo "开始建syn。。。。。。"
        find /home/zrj/shell -name 'asd_c*.table' -print
        ;;
    esac
    ;;
(*)
    echo "拜拜"
    ;;
esac
