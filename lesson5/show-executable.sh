#!/bin/bash


result=()

cd /usr/bin
for file in `find -type f`; do
	if [ -x $file ]; then
		result+=($file)
	fi
done

cd -
printf "%s\n" "${result[@]}" | cut -c 3- > executable.txt

