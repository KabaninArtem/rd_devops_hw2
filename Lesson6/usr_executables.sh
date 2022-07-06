#!/bin/bash

path="/usr/sbin/"

find $path -type f -and -perm -u=x,u=w > usr_executables.txt