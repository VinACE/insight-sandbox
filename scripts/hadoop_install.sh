#!/bin/bash

# update package manager and install jdk
sudo apt-get update
sudo apt-get install openjdk-7-jdk

# Download hadoop and instal into /usr/local
wget http://mirror.symnds.com/software/Apache/hadoop/common/hadoop-2.7.1/hadoop-2.7.1.tar.gz -P ~/Downloads

sudo tar zxvf ~/Downloads/hadoop-*.tar.gz -C /usr/local
sudo mv /usr/local/hadoop-* /usr/local/hadoop

# set up paths

echo"export JAVA_HOME=/usr
export PATH=$PATH:$JAVA_HOME/bin

export HADOOP_HOME=/usr/local/hadoop
export PATH=$PATH:$HADOOP_HOME/bin" >> ~/.profile

# refresh
. ~/.profile

# double check versions installed
hdfs -version

# hadoop configs
# hadoop-namenode-config.sh
# hadoop-datanode-config.sh
