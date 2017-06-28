#!/usr/bin/env bash

#如：1990-01-01 01:01:01 加上 1小时 20分
time1=$(date +%s -d '1990-01-01 01:01:01');     #将基础时间转为时间戳
echo "time1 stamp is ${time1}";

time2=$((1*60*60+20*60));
echo "time2 stamp is ${time2}";

time1=$(($time1+$time2));
time1=$(date +%Y-%m-%d\ %H:%M:%S -d "1970-01-01 UTC $time1 seconds");
echo "time1 str is ${time1}";



