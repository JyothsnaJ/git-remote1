#!/bin/bash

## creating the variable

PACKAGE='apache2'

##accessing the variable

echo "$PACKAGE"

###installing the package and start package using variable

#installing apache2 package

sudo apt-get install $PACKAGE -y
echo
echo
echo "$PACKAGE installation completed"
echo
echo
##starting apache2 package
sudo systemctl start $PACKAGE
echo
echo "$PACKAGE started"
echo
##enabling apache2 package
echo
sudo systemctl enable $PACKAGE
echo
sudo systemctl is-active $PACKAGE
echo
sudo systemctl is-enabled $PACKAGE
##stoping the apache2 service
echo
sudo systemctl stop $PACKAGE
##disabling the service
echo "disabling the apache2 service"
sudo systemctl disable $PACKAGE



