sudo apt-get update
sudo apt-get install openjdk-7-jdk scala

# Install sbt
wget https://dl.bintray.com/sbt/debian/sbt-0.13.7.deb -P ~/Downloads
sudo dpkg -i ~/Downloads/sbt-0.13.7.deb
sudo apt-get install sbt

# Install Spark
wget http://apache.mirrors.tds.net/spark/spark-1.4.1/spark-1.4.1-bin-hadoop2.4.tgz -P ~/Downloads
sudo tar zxvf ~/Downloads/spark-1.4.1-bin-hadoop2.4.tgz -C /usr/local
sudo mv /usr/local/spark-1.4.1-bin-hadoop2.4 /usr/local/spark

echo "export SPARK_HOME=/usr/local/spark
export PATH=$PATH:$SPARK_HOME/bin" >> ~/.profile
. ~/.profile

# this is for my set up
echo "export SPARK_HOME=/usr/local/spark
export PATH=$PATH:$SPARK_HOME/bin" >> ~/.zshrc
. ~/.zshrc

# Set the Java path for spark-env
scp $SPARK_HOME/conf/spark-env.sh.template $SPARK_HOME/conf/spark-env.sh

echo "export JAVA_HOME=/usr
export SPARK_PUBLIC_DNS="<public-dns>"
export SPARK_WORKER_CORES=$(echo $(nproc)*3 | bc)" >> $SPARK_HOME/conf/spark-env.sh

