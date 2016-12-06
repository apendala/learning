#!/bin/sh

for i in `find . -type f |grep -v ".git" |grep -v "*.sh"`
do
	cat $i | sed -e 's/9999/9999/g' > $i.new
	mv $i.new $i
done
