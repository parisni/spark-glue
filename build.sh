#!/bin/bash
set -ex

HADOOP_VERSION=3.3.0

docker build -t spark3-glue .
docker create -it --name dummy spark3-glue bash
docker cp dummy:/opt/spark_clone/spark-3.1.2-bin-hadoop-provided-glue.tgz .
docker rm -fv dummy
wget https://archive.apache.org/dist/hadoop/common/hadoop-${HADOOP_VERSION}/hadoop-${HADOOP_VERSION}.tar.gz

#example
#export HADOOP_HOME=/Users/andrekuhnen/GSG/data_engineering/spark-glue/tmp/dist/hadoop-3.3.0
#export SPARK_DIST_CLASSPATH=$HADOOP_HOME/etc/hadoop/*:$HADOOP_HOME/share/hadoop/common/lib/*:$HADOOP_HOME/share/hadoop/common/*:$HADOOP_HOME/share/hadoop/hdfs/*:$HADOOP_HOME/share/hadoop/hdfs/lib/*:$HADOOP_HOME/share/hadoop/hdfs/*:$HADOOP_HOME/share/hadoop/yarn/lib/*:$HADOOP_HOME/share/hadoop/yarn/*:$HADOOP_HOME/share/hadoop/mapreduce/lib/*:$HADOOP_HOME/share/hadoop/mapreduce/*:$HADOOP_HOME/share/hadoop/tools/lib/*
