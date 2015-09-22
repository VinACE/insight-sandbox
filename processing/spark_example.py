rom pyspark import SparkContext
from pyspark.streaming import StreamingContext
from pyspark.streaming.kafka import KafkaUtils

# Create a SparkContext
sc = SparkContext("spark://HOSTNAME:7077", "NetworkWordCount")
ssc = StreamingContext(sc, 1)           # batch interval of 1 second

# Create a DStream that will connect to hostname:port, like localhost:9999
lines = ssc.socketTextStream("HOSTNAME", 2181)

# Split each line into words
words = lines.flatMap(lambda line: line.split(" "))

# Count each word in each batch
pairs = words.map(lambda word: (word, 1))
wordCounts = pairs.reduceByKey(lambda x, y: x + y)
