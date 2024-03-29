#!/bin/sh

echo '>>>> DOCKER BUILD...'
docker build . -t spark_env
echo '>>>> RUN SCALA SPARK WORLD COUNT BUILD...'
docker run  --mount \
type=bind,\
source="$(pwd)"/.,\
target=/spark-word-count \
-i -t spark_env \
/bin/bash  -c "cd ../spark-word-count && sbt clean compile && sbt run && sbt assembly && spark-submit /spark-word-count/target/scala-2.11/spark-scala-word-count-assembly-1.0.jar"