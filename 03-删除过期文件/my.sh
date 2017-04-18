#!/usr/bin/env bash
sh ../02-批量新建文件/my.sh       #首先指向文件新建脚本
#删除n天前的*.log文件
n=$((10*86400))     #保留10天
today=$(date +%Y%m%d)
todayStamp=`date -j -f "%Y%m%d" "$today" +%s`
echo "today is ${today} timeStamp is ${todayStamp}"
for file in *.log
do
#    echo $file
    fileDate=${file:0:8}    #提取文件前八位字符获取日期
    fileDateStamp=`date -j -f "%Y%m%d" "$fileDate" +%s`
    secDiff=`expr ${todayStamp} - ${fileDateStamp}`
#    echo "${fileDate} timeStamp is ${fileDateStamp} diff of ${today} is ${secDiff}"
    if [ ${secDiff} -gt ${n} ]; then
        echo "============== ${file}"
    fi
done