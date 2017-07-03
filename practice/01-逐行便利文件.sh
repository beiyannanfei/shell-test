#!/usr/bin/env bash
# 将文件中时间字符串转换成时间戳并另存成另一个文件

for LINE in `cat ./src.dat`
do
    #echo $LINE;
    #echo $LINE >> dest.dat
    dateStr=`echo "${LINE}" | awk -F 'date":' '{print $2}' | awk -F '},"lonlat' '{print $1}'`;
    echo ${dateStr};
    ms=${dateStr:21:3};
    dateStr=${dateStr:1:19};
    dateStamp=`date -j -f "%Y-%m-%dT%H:%M:%S" "$dateStr" +%s`
    echo "dateStamp is ${dateStamp}";
    dateStamp=$((dateStamp*1000));
    echo "dateStamp is ${dateStamp}";
done

