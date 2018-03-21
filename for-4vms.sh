#!/bin/bash

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@installing httpd service in 4vms

for IP in `cat 4vms-IP`
do
    echo "$IP"
    ssh-copy-id vagrant@$IP
    ssh vagrant@$IP "sudo yum install httpd -y"
done

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@    website hosting in 4vms

for WEB in `cat 4vms-IP`
do
	echo "$WEB"

	ssh-copy-id vagrant@$WEB 
	ssh vagrant@$WEB "wget -O $1 $2; unzip $1; cd 2097_pop; sudo cp * -r /var/www/html; sudo service httpd start; sudo chkconfig httpd on; sudo service iptables start; sudo service iptables stop;"
done
