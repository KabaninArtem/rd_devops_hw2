#!/bin/bash


result=()

cd /etc
for file in `find -type d`; do
	result+=($file)
done

cd -
printf "%s\n" "${result[@]}" | cut -c 3- > etc_dir.txt

