#!/bin/bash

#curl http://www.tuho.tv |grep 'href="' |grep -o [0-9][0-9][0-9][0-9][0-9][0-9][0-9] > id
#curl http://www.tuho.tv |grep  'href="' |grep -o [0-9]*[0-9] |sort -rn |uniq > id
#curl http://www.tuho.tv |grep -o  '[0-9]*' |sort -rn |uniq > id
curl http://www.tuho.tv |grep "href=\"/" |grep -o '[0-9][0-9][0-9][0-9][0-9][0-9][0-9]*' |sort -rn |uniq >> id.tmp
cat id.tmp |sort -rn |uniq > id
cat id |wc -l
