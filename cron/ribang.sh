#!/bin/bash

#curl -s http://www.tuho.tv/$1 |grep '<span class="name ellipsis">' 
#curl -s http://www.tuho.tv/$1 |grep '<span class="name ellipsis">' |sed -e 's/<span class="name ellipsis">//g' -e 's/<\/span>//g'

#curl -s http://www.tuho.tv/$1 |grep '<span class="name ellipsis">' |sed -e 's/<span class="name ellipsis">/[][]/g' -e 's/<\/span>//g' -e 's/^\s*//g'

curl -s http://www.tuho.tv/$1 |grep -A 1 '<span class="name ellipsis">' |sed -e 's/<span class="name ellipsis">//g' -e 's/<\/span>//g' -e 's/[[:space:]][[:space:]]*/       /g' -e 's/<span       class="coin">//g'
