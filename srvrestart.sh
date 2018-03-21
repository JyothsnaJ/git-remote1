#!/bin/bash
echo "printing $1"
echo "restarting service in 10sec $1"
##halting the service in 10sec
echo
sleep 10
echo 
##restarting the service
echo "restarting the service $1"
sudo systemctl restart $1
echo
##activating the service
echo "checking the status $1"
echo
sudo systemctl is-active $1
echo
