#!/bin/bash
# Send SIGTSTP (18) to apache2 and wait 30 sec for every process PID

name="apache2"
for pid in `pgrep $name`; do
	sudo kill -SIGTSTP $pid

	count=0
	while [ $count -lt 30 ]; do
		sleep 1
		echo "Process $name $pid suspended"
		count=$((count+1))
	done
done
