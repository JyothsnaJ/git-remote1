#!/bin/bash

#########identifing the os

lsb_release -a

##########specify the condition
if [ $? == 0 ]
then
	echo
	echo "This is debian based os"
	sudo apt-get install apache2
else
	echo
	echo "This is redhat based os"
	sudo yum install httpd
fi

