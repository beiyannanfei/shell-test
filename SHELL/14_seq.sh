#!/usr/bin/env bash

seq 10;             #起始默认是 1，间隔默认也是1
clear;

seq 3 7;            #间隔默认是1
clear;

seq 1 3 10;         #从1开始，到10 间隔为3 结果是：1 4 7 10
clear;

seq -s'#' 1 3 10;   #默认间隔是“空格” 如果想换成其它的可以带参数：-s     out->1#4#7#10#
echo "";

a=($(seq 1 3 10));  #生成连续数组
echo "a=${a[*]}";

#生成连续相同字符
seq -s '#' 30 | sed -e 's/[0-9]*//g';   #通过加入间隔字符‘＃’后，替换掉数字，　生成连续相同字符’#’

echo "-----------------------------------";
#实现从1..1000中所有偶数的和值
start=0;
total=0;
for i in $(seq ${start} 2 1000);
do
    total=$((${total}+${i}));
done
echo "total=${total}";