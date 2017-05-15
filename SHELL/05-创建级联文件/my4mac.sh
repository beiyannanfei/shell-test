#!/usr/bin/env bash
echo $1
reverse=`echo $1|rev`   #将参数反转
echo ${reverse}
index1=`echo ${reverse} | awk '{printf("%d", match($0, "/"))}'`  #字符串反转后的'/'的索引
echo ${index1}
fileNameRev=${reverse:0:`expr ${index1} - 1`}
echo ${fileNameRev}     #反转后的文件名称
dirNameRev=${reverse:${index1}}
echo ${dirNameRev}     #反转后的目录名称
fileName=`echo ${fileNameRev} | rev`    #真正的文件名
dirName=`echo ${dirNameRev} | rev`      #真正的目录名
echo ${fileName}
echo ${dirName}
mkdir -p ${dirName}
cd ${dirName}
pwd
touch ${fileName}
ls && pwd
