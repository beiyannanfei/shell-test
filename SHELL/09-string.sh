#!/usr/bin/env bash

test="I love china";
echo ${#test};  # ${#变量名}得到字符串长度

echo "-----------------------";
echo ${test:5}      # ${变量名:起始:长度}得到子字符串
echo ${test:5:3}    # ${变量名:起始:长度}得到子字符串

echo "-----------------------";
test='c:/windows/boot.ini'; #${test##*/},${test%/*} 分别是得到文件名，或者目录地址最简单方法。
echo ${test#/}          #c:/windows/boot.ini
echo ${test#*/}         #windows/boot.ini
echo ${test##*/}        #boot.ini
echo ${test##*.}        #ini    获取扩展名
echo ${test%/*}         #c:/windows
echo ${test%%/*}        #c:
echo ${test%%:*}        #c

echo "-----------------------";
echo ${test/o/O}        #${变量/查找/替换值} 一个“/”表示替换第一个
echo ${test//o/O}       #”//”表示替换所有