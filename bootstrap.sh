#!/usr/bin/env bash

apt-get update && apt-get install -y apache2

apt-get install build-essential -y
apt-get install apache2-prefork-dev -y
apt-get install libapr1-dev -y
apt-get install libaprutil1-dev -y
apt-get install libreadline5
apt-get remove make -y
apt-get install make -y
apt-get update
apt-get install ruby1.9.3 -y
apt-get install ruby1.9.1-dev -y
apt-get install libcurl4-openssl-dev -y
gem install passenger --version 4.0.53
apt-get install vim -y
apt-get install git -y
curl -sL https://deb.nodesource.com/setup | sudo bash -
apt-get install nodejs -y
apt-get install npm -y
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo "deb http://repo.mongodb.org/apt/ubuntu "$(lsb_release -sc)"/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list
apt-get update
apt-get install -y mongodb-org
apt-get install -y mongodb-org=3.0.2 mongodb-org-server=3.0.2 mongodb-org-shell=3.0.2 mongodb-org-mongos=3.0.2 mongodb-org-tools=3.0.2
echo "mongodb-org hold" | sudo dpkg --set-selections
echo "mongodb-org-server hold" | sudo dpkg --set-selections
echo "mongodb-org-shell hold" | sudo dpkg --set-selections
echo "mongodb-org-mongos hold" | sudo dpkg --set-selections
echo "mongodb-org-tools hold" | sudo dpkg --set-selections

export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
locale-gen en_US.UTF-8
dpkg-reconfigure locales

#install java
#Install java
apt-get install -y software-properties-common python-software-properties
add-apt-repository ppa:webupd8team/java

apt-get update
echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections
apt-get install -y oracle-java8-installer

apt-get update
apt-get install libxtst6

chown -R vagrant:vagrant /home/vagrant/.npm
chown -R vagrant:vagrant /usr/lib/node_modules
npm install -g strongloop
export PATH=$PATH:/usr/lib/node_modules/strongloop/bin

## get info on a particular file
apt-get install apt-file && apt-file update
