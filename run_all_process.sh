#!/bin/sh

#################################################################
# SCRIPT RUN ALL PROCESSES AT ONCE 
#################################################################

git clone https://github.com/yennanliu/spark-scala-word-count.git
cd spark-scala-word-count
docker build . -t spark_env
docker run  --mount \
type=bind,\
source="$(pwd)"/.,\
target=/spark-word-count \
-i -t spark_env \
/bin/bash  -c "cd ../spark-word-count && sbt clean compile && sbt run && sbt assembly && spark-submit /spark-word-count/target/scala-2.11/spark-scala-word-count-assembly-1.0.jar"