#!/bin/sh
# User specific environment and startup programs
IP=`ip a | grep inet | grep -v 127.0.0.1 | awk '{print $2}' | cut -d "/" -f1`
export PS1="[\u@\h-$IP \W]$"
