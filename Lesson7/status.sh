#!/bin/bash

# Send SIGSTOP (19) to apache2 service if it launch

name='apache2'
for pid in `pgrep $name`; do
	sudo kill -SIGSTOP $pid
	echo "“Process $name $pid stopped”"
done
