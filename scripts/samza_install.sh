sudo apt-get update

wget http://apache.arvixe.com/samza/0.9.1/apache-samza-0.9.1-src.tgz -P ~/Downloads
sudo tar zxvf ~/Downloads/apache-samza*.tgz -C /usr/local
sudo mv /usr/local/apache-samza* /usr/local/samza

echo "export SAMZA_HOME=/usr/local/samza
export PATH=$PATH:$SAMZA_HOME/bin" >> ~/.zshrc
source ~/.zshrc

echo $SAMZA_HOME

sudo chown -R ubuntu $SAMZA_HOME

# gradle for building project
wget https://services.gradle.org/distributions/gradle-2.7-all.zip -P ~/Downloads
sudo unzip -a ~/Downloads/gradle-2.7-all.zip -d /usr/local
sudo mv /usr/local/gradle-2.7 /usr/local/gradle

gradle -b bootstrap.gradle
./gradlew clean build
