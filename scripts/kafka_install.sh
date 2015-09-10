sudo apt-get update
sudo apt-get install openjdk-7-jdk
wget http://apache.claz.org/kafka/0.8.2.1/kafka_2.9.1-0.8.2.1.tgz -P ~/Downloads
sudo tar zxvf ~/Downloads/kafka_2.9.1-0.8.2.1.tgz -C /usr/local
sudo mv /usr/local/kafka_2.9.1-0.8.2.1 /usr/local/kafka

echo "next, edit this file: sudo vim /usr/local/kafka/config/server.properties"
