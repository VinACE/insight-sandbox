from pyspark import SparkContext
from pyspark.streaming import StreamingContext
from pyspark.streaming.kafka import KafkaUtils


# Create a local StreamingContext with two working thread and batch interval of 2 second
sc = SparkContext("spark://MASTER_INTERNAL_DNS:7077", "MyKafkaStream")
ssc = StreamingContext(sc, 1)

kafkaStream = KafkaUtils.createStream(ssc, "MASTER_PUBLIC_IPADDRESS:2181", "GroupNameDoesntMatter", {"TOPIC_NAME": 2})

messages = kafkaStream.map(lambda xs:xs)
messages.pprint()

ssc.start()             # Start the computation
ssc.awaitTermination()  # Wait for the computation to terminate
