sudo apt-get update

wget http://apache.arvixe.com/samza/0.9.1/apache-samza-0.9.1-src.tgz -P ~/Downloads
sudo tar zxvf ~/Downloads/apache-samza*.tgz -C /usr/local
sudo mv /usr/local/apache-samza* /usr/local/samza

echo "export SAMZA_HOME=/usr/local/samza
export PATH=$PATH:$SAMZA_HOME/bin" >> ~/.zshrc
source ~/.zshrc

echo $SAMZA_HOME


