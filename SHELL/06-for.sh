#!/bin/bash

for((i=1;i<=10;i++));do
    echo ${i}
done;

echo "===============";

a=10;
while [ ${a} -gt 0 ]
do
    echo ${a};
    ((a--));
done;

echo "===============";

b=10;
while((b>=0))
do
    echo ${b};
    ((b--));
done;

echo "===============";

c=10;
until [ ${c} -lt 0 ]
do
    echo "c=${c}";
    c=`expr ${c} - 1`
done;


