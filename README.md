*painkiller medication to relieve headaches. ingest when necessary.*


**Setting up environment:**

Scripts under the `scripts` directory contain scripts. I use ZSH so ecofriendly installs that for me. It's easy to run scripts from a url. The format looks like the following:

`bash <(curl -s https://raw.githubusercontent.com/katychuang/insight-sandbox/master/scripts/ecofriendly.sh)`

Other scripts available include semi-automated installations for [hadoop](https://github.com/katychuang/insight-sandbox/blob/master/scripts/hadoop_install.sh), [kafka](https://github.com/katychuang/insight-sandbox/blob/master/scripts/kafka_install.sh), [zookeeper](https://github.com/katychuang/insight-sandbox/blob/master/scripts/zookeeper_install.sh), [storm](https://github.com/katychuang/insight-sandbox/blob/master/scripts/storm_install.sh), [spark](https://github.com/katychuang/insight-sandbox/blob/master/spark_install.sh), and [samza](https://github.com/katychuang/insight-sandbox/blob/master/scripts/samza_install.sh). Note that these just download files to certain directories. Configuration properties still have to be manually edited.

The remaining directories correspond to pipeline sections.

* [Ingestion](ngestion)
* [Stream Processing](processing)

Other handy reference material

* [List of port numbers](https://github.com/katychuang/insight-sandbox/blob/master/ports.md)


