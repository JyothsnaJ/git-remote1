
############################### website creation

################installing the wget,zip,unzip,firewalld

sudo apt-get install wget -y
sudo apt-get install zip -y
sudo apt-get install unzip -y
sudo apt-get install firewalld
#echo "Enter zipfile name is:"
#read $1
#echo "Enter url"
#read $2
wget -O $1 $2
echo "$2"
echo "$1"
unzip $1
ls -la
DIR=`echo "$2" | cut -d / -f5`
echo "$DIR"
cd $DIR
#coping the all files 
sudo cp * -r /var/www/html/

##starting and stoping firewalld

echo 
sudo systemctl start firewalld
echo
sudo systemctl stop firewalld
echo

