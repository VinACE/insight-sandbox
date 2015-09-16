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

: '
sudo vim $HADOOP_HOME/etc/hadoop/hadoop-env.sh
Find the line with export JAVA_HOME=${JAVA_HOME} and replace the ${JAVA_HOME} with /usr

export JAVA_HOME=/usr
'

# core-site
: '
edit $HADOOP_HOME/etc/hadoop/core-site.xml
all point to namenode
<property>
   <name>fs.defaultFS</name>
   <value>hdfs://masternode_public_dns:9000</value>
</property>
'

: '
<property>
   <name>yarn.nodemanager.aux-services</name>
   <value>mapreduce_shuffle</value>
</property>
   
<property>
   <name>yarn.nodemanager.aux-services.mapreduce.shuffle.class</name>
   <value>org.apache.hadoop.mapred.ShuffleHandler</value>
</property>

<property>
   <name>yarn.resourcemanager.resource-tracker.address</name>
   <value>namenode-public-dns:8025</value>
</property>

<property>
   <name>yarn.resourcemanager.scheduler.address</name>
   <value>namenode-public-dns:8030</value>
</property>

<property>
   <name>yarn.resourcemanager.address</name>
   <value>namenode-public-dns:8050</value>
</property>
'

# hadoop-datanode-config.sh




