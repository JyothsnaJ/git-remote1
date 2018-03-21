#!/bin/bash

##accessing the variable

echo "printing $1"

###installing the package and start package using variable

#installing nginx package

sudo apt-get install $1 -y
echo
echo
echo "$1 installation completed"
echo
echo
##starting nginx package
sudo systemctl start $1
echo
echo "$1 started"
echo
##enabling nginx package
echo
sudo systemctl enable $1
echo
sudo systemctl is-active $1
echo
sudo systemctl is-enabled $1
##stoping the nginx service
echo
sudo systemctl stop $1
##disabling the service
echo "disabling the nginx service"
sudo systemctl disable $1



