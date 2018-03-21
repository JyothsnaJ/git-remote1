#!/bin/bash

df -h | grep /dev/sda1 | awk '{print $5}'

if [ $?==0 ]
then
	echo
	echo "more than 90% of disk is free"
	echo
else
	echo
	echo "root usage is more than 10%"
	echo
fi
