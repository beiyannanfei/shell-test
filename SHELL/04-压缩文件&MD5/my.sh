#!/usr/bin/env bash

rm -rf *.gz *.log
counter=0
while [ ${counter} -lt 10 ]
do
    fileName="test-${counter}.log"
    counter=`expr ${counter} + 1`
    if [ ! -f $fileName ]; then
        touch ${fileName}
        echo "create file ${fileName} finish"
    fi
done
today=`date +%Y%m%d`
tarFileName="test-${today}.tar.gz"
tar -zcvf ${tarFileName} *.log
echo "tar ${tarFileName} finish"
baseFileName=${tarFileName%%.*}
echo "base file name ${baseFileName}"
md5Str=echo ${baseFileName} | md5sum | awk '{print $1}'
echo "${baseFileName} MD5 value is ${md5Str}"
newFileName="${baseFileName}.${md5Str}.tar.gz"
echo "newFileName is ${newFileName}"
cp ${tarFileName} ${newFileName}









