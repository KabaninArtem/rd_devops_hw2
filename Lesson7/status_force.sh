#!/bin/bash

# Send SIGSTOP (19) to apache2 service if it launch. 
# After 10 sec check if it still exist and send SEGTERM (9)

name="apache2"
send_kill () {
	for pid in `pgrep $name`; do
		sudo kill -$1 $pid

		if [ $2 ]; then
			echo "Process $name $pid stopped"
		fi
	done
}

send_kill "SIGSTOP" 1
sleep 10
send_kill "SIGTERM"