#!/bin/bash


result=()

cd /var/log
for file in `ls -lS | grep -v "^d" | rev | cut -d " " -f 1 | rev`; do
	result+=($file)
done

cd -
printf "%s\n" "${result[@]}" > size-sorted.txt

