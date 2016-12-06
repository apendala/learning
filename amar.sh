#!/bin/sh

for i in `find . -type f |grep -v ".git" |grep -v amar.sh`
do
	cat $i | sed -e 's/4315/9999/g' > $i.new
	mv $i.new $i
done
