#!/bin/bash

for IP in `cat hostIP`
do

  echo $IP
  ssh vagrant@$IP "sudo apt-get update; echo "installing the apache service"; sudo apt install apache2; echo "starting the apache service"; sudo service apache2 start; echo "apache service started";"
  	      
done

