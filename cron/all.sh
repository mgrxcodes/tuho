#!/bin/bash

for i in `cat id`; do echo "=== 主播:"; curl -s http://www.tuho.tv/$i |grep '<li class="name">' |sed -e 's/<li class="name">//g' -e 's/<\/li>//g' -e 's/^\s*//g';echo "ID:"; echo $i; echo "时间:"; date +%F-%T; echo "日榜前10排名："; ./ribang.sh $i; done
