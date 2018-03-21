#!/bin/bash

###updating the services

echo "updating the services"
echo
sudo apt-get update
echo
echo "all the services are upto date"
echo

###installing jdk
echo "Enter the Package"
read $PACKAGE
echo 
echo "installing $PACKAGE"
echo
sudo apt-get install $PACKAGE 
echo
echo "jdk installed successfully"
echo "checking java installation"
echo
java -version
echo
echo
###installing tomcat
echo "installing tomcat"

##changing the directory to tmp

echo
cd /tmp
echo
##downloading tar.gz file from website

echo
echo "downloading the tar.gz file"
PACKAGE1=http://apache.mirrors.ionfish.org/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz
sudo curl -O $PACKAGE1
echo "file downloaded successfully"
echo
##creating the directory tomcat

echo
echo "creating the directory"
sudo mkdir /opt/tomcat
echo "/opt/tomcat directory created successfully"
echo

###extracting the tar.gz file 

echo
echo "extracting the tar.gz file"
echo 
tar -xvf apache-tomcat-8.5.28.tar.gz
echo
ls 
echo
###copying the extracted directory to another location

echo "copying the directory"
cp -R /tmp/apache-tomcat-8.5.28 /opt/tomcat
###giving the proper permissions 

sudo chmod -R 777 /opt/tomcat
echo

######running the scripts

echo "running the startup.sh"
/opt/tomcat/apache-tomcat-8.5.28/bin/startup.sh
echo


