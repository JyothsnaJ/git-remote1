#!/bin/bash

#################################load average
echo "############################################"
echo "printing load average"
w | head -1 | awk '{print $8}'
echo
############################### free memory
echo "############################################"
echo "printing free memory"
free -m | grep Mem | awk '{print $3}'
echo
######################################## root usage
echo "############################################"
echo "printing root usage"
df -h | grep /dev/sda1 | awk '{print $5}'
#df -h / | awk '{print $5}'
