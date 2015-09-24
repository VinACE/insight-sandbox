# Stream processing

This folder contains scripts showing examples for working with stream processing software.

## How to install

**Storm**

[Pyleus](https://github.com/Yelp/pyleus)

**Spark Streaming**

[PySpark]()

## How to use

**Storm**

After installing pyleus and following instructions for installing, on your master node, type:

`pyleus -v submit -n `hostname` exclamation_topology.jar`

* Make sure to run this from the directory that contains your jar file

**Spark Streaming**

On your master node, type:

`spark-submit --packages org.apache.spark:spark-streaming-kafka_2.10:1.5.0 processing/spark_test.py`

See spark_kafka_example.py for an example of usage. Then send some data with your producer. 
