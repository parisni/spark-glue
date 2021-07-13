#!/bin/bash
set -ex

docker build -t spark3-glue .
docker create  -it --name dummy  spark3-glue bash
docker cp dummy:/opt/spark_clone/spark-3.1.2-bin-hadoop-provided-glue.tgz .
docker rm -fv dummy
