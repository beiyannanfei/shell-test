#!/usr/bin/env bash

awk 'BEGIN{
test=100;
if (test > 90){
    print "very good";
}
else if(test > 60) {
    print "good";
}
else{
    print "no pass";
}
}';

awk 'BEGIN{
for(k in ENVIRON){
    print k"="ENVIRON[k];
}
}';