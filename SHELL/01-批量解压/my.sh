#!bin/sh
#循环解压
for file in ./*.gz
do
  echo $file
  tar zxvf $file
done
