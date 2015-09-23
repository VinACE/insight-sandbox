#!/usr/bin/env python
# https://gist.github.com/jakekdodd/e7ee38fd945818d86eb4
# https://github.com/thanhson1085/python-kafka-avro/blob/master/producer.py

import io
import avro.schema
import avro.io
import loremipsum
import random

from kafka.client import KafkaClient
from kafka.producer import SimpleProducer, KeyedProducer

g = loremipsum.Generator()
url = "HOSTNAME:9092"
kafka = KafkaClient(url)
producer = SimpleProducer(kafka)

# Path to user.avsc avro schema
schema_path="user.avsc"

# Kafka topic
topic = "my-topic"

schema = avro.schema.parse(open(schema_path).read())


for i in xrange(2000):

    writer = avro.io.DatumWriter(schema)
    bytes_writer = io.BytesIO()
    encoder = avro.io.BinaryEncoder(bytes_writer)
#    writer.write({"name": g.generate_sentence()
#                 , "favorite_color": g.generate_sentence()
#                 , "favorite_number": random.randint(0,10)}
#                 , encoder)
    writer.write( { "name": "123"
                  , "favorite_color": "111"
                  , "favorite_number": random.randint(0,10)}, encoder)
    raw_bytes = bytes_writer.getvalue()
    producer.send_messages(topic, raw_bytes)
