sudo apt-get update
sudo apt-get install openjdk-7-jdk

echo "Checking version and location"
which java
java -version

echo "\nBegin download"
wget http://mirror.cc.columbia.edu/pub/software/apache/zookeeper/stable/zookeeper-3.4.6.tar.gz -P ~/Downloads
sudo tar zxvf ~/Downloads/zookeeper-*.tar.gz -C /usr/local
sudo mv /usr/local/zookeeper-3.4.6/ /usr/local/zookeeper

echo "\n configuring zookeeper"
cp /usr/local/zookeeper/conf/zoo_sample.cfg /usr/local/zookeeper/conf/zoo.cfg

echo "\n type in $ sudo vim /usr/local/zookeeper/conf/zoo.cfg"
