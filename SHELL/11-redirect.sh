#!/usr/bin/env bash
#数据重定向

ls -l 11-redirect.sh noexists.sh;
echo "=============================";
clear;

ls -l 11-redirect.sh noexists.sh 1>success1.txt;     #把正确输出写入suc.txt  1>可以省略，不写，默认所至标准输出
echo "=============================";
cat success1.txt;
clear;

ls -l 11-redirect.sh noexists.sh 1>success2.txt 2>err1.txt;     #把错误输出，不输出到屏幕，输出到err.txt
echo "=============================";
cat success2.txt err1.txt;
clear;

ls -l 11-redirect.sh noexists.sh 1>>success1.txt 2>>err1.txt;       #继续追加把输出写入suc.txt err.txt  “>>”追加操作符
echo "=============================";
cat success1.txt err1.txt;
clear;

ls -l 11-redirect.sh noexists.sh 2>&-;              #将错误输出信息关闭掉 &[n] 代表是已经存在的文件描述符，&1 代表输出 &2代表错误输出 &-代表关闭与它绑定的描述符
ls -l 11-redirect.sh noexists.sh 2>/dev/null;       #/dev/null 这个设备，是linux 中黑洞设备，什么信息只要输出给这个设备，都会给吃掉
clear;

#关闭所有输出
ls -l 11-redirect.sh noexists.sh 1>&- 2>&-;                              #关闭 1 ，2 文件描述符
ls -l 11-redirect.sh noexists.sh 1>/dev/null 2>/dev/null;                #将1,2 输出转发给/dev/null设备
ls -l 11-redirect.sh noexists.sh >/dev/null 2>&1;     #将错误输出2 绑定给 正确输出 1，然后将 正确输出 发送给 /dev/null设备  这种常用
ls -l 11-redirect.sh noexists.sh &>/dev/null;         #& 代表标准输出 ，错误输出 将所有标准输出与错误输出 输入到/dev/null文件

