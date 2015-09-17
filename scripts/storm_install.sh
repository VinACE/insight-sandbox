sudo apt-get update
sudo apt-get install openjdk-7-jdk

sudo apt-get install supervisor

# install storm
wget http://mirrors.gigenet.com/apache/storm/apache-storm-0.9.5/apache-storm-0.9.5.tar.gz -P ~/Downloads
sudo tar zxvf ~/Downloads/apache-storm*.gz -C /usr/local
sudo mv /usr/local/apache-storm* /usr/local/storm

echo "export STORM_HOME=/usr/local/storm
export PATH=$PATH:$STORM_HOME/bin" >> ~/.zshrc

. ~/.zshrc

echo "hey there, type in . ~/.zshrc to be on the safe side"

# configure storm on all nodes
sudo mkdir /usr/local/storm/local_state
sudo chown ubuntu /usr/local/storm/local_state

: '
sudo vim /usr/local/storm/conf/storm.yaml
'
