#!/bin/bash

# Check descriptors of the user's open files and processes
# Output them to a file along with the PID of the process (descriptor_pid.txt).

lsof -d 0,1,2 | awk '{print $2,$4}' | sed -n '1!p' > descriptor_pid.txt