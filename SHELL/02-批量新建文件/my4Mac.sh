#!/usr/bin/env bash
#在"03-删除过期文件"文件夹中新建最近30天的形如20170101-a.log的文件
cd ../03-删除过期文件 && pwd && ls && rm -rf *.log
today=`date +%Y%m%d`    #<=> today1=$(date +%Y%m%d)
echo "today is ${today}"
#date -v -1d +%Y-%m-%d(mac系统获取当前时间的前一天) linux为: date +%Y%m%d --date='-1 day'
before30day=`date -v -30d +%Y%m%d`  #30天前的日期
echo "a month ago is ${before30day}"

counter=1
currentDay=`date +%Y%m%d`
while [ ${currentDay} -gt ${before30day} ]
do
    filename="${currentDay}-a.log"
#    echo "var current filename is ${filename}"
    if [ ! -f $filename ]; then
        touch $filename
        echo "touch ${filename} success"
    fi
    currentDay=`date -v -${counter}d +%Y%m%d`
    counter=`expr ${counter} + 1`
done

echo "============== create 30 file finish! =============="
ls