# Stream processing

This folder contains scripts showing examples for working with stream processing software.

## How to install

**Storm**

* [How to Install a Distributed Apache Storm Cluster](http://knowm.org/how-to-install-a-distributed-apache-storm-cluster/)
* [Pyleus](https://github.com/Yelp/pyleus)
* [Reading and Understanding the Storm UI [Storm UI explained]](http://www.malinga.me/reading-and-understanding-the-storm-ui-storm-ui-explained/)

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

See spark_kafka_example.py for an example of usage with a Kafka producer. Once this spark stream is open, you can send data to your pipeline with your producer. You should be able to see the output of the spark stream.




---

*Acknowledgements*

*Many thanks to current and past fellows who shared awesome links and useful code snippets!*
