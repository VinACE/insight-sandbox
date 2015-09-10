touch $SPARK_HOME/conf/slaves
echo "ec2-54-175-251-58.compute-1.amazonaws.com
ec2-54-175-251-202.compute-1.amazonaws.com
ec2-54-175-251-84.compute-1.amazonaws.com"| cat >> $SPARK_HOME/conf/slaves

# start spark
$SPARK_HOME/sbin/start-all.sh
