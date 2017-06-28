#!/usr/bin/env bash

#四则运算
a=$((5*5+5-3/2));   #在linux shell中，我们可以使用 $(()) 将表达式放在括号中，即可达到运算的功能
echo "a=${a}";

b=`expr 5 - 4`;     #将需要运算的表达式写入在expr 后面即可，保证 参数与运算符号中间有空格隔开
echo "b=${b}";

#浮点运算 bash 不支持浮点运算，如果需要进行浮点运算，需要借助bc,awk 处理     http://man.linuxde.net/bc
c=$(echo "5.01-4*2.0"|bc);
echo "c=${c}";

d=$(awk 'BEGIN{print 7.01*5-4.01}');
echo "d=${d}";