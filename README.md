<h1 align="center">SPARK-SCALA-WORD-COUNT</h1>
<h4 align="center">A simplist demo on how to write, compile, export, and run a spark word count job via spark scala with sbt tool </h4>


## Quick Start
```bash
# STEP 0) 
$ git clone https://github.com/yennanliu/spark-scala-word-count.git && cd spark-scala-word-count 

# STEP 1) download the used dependencies.
$ sbt clean compile

# STEP 2) run spark word count via `sbt run`
$ sbt run

# STEP 3) create jars from spark scala scriots 
$ sbt assembly

# STEP 4) run spark word count via `spark submit`
$ spark-submit /Users/$USER/spark-scala-word-count/target/scala-2.11/spark-scala-word-count-assembly-1.0.jar

```

## Quick Start (Docker)
```bash 
# STEP 0) 
$ git clone https://github.com/yennanliu/spark-scala-word-count.git

# STEP 1) 
$ cd spark-scala-word-count

# STEP 2) docker build 
$ docker build . -t spark_env

# STEP 3) ONE COMMAND : run the docker env and sbt compile and sbt run and assembly once 
$ docker run  --mount \
type=bind,\
source="$(pwd)"/.,\
target=/spark-word-count \
-i -t spark_env \
/bin/bash  -c "cd ../spark-word-count && sbt clean compile && sbt run && sbt assembly && spark-submit /spark-word-count/target/scala-2.11/spark-scala-word-count-assembly-1.0.jar"

# STEP 3') : STEP BY STEP : access docker -> sbt clean compile -> sbt run -> sbt assembly -> spark-submit 
# docker run 
$ docker run  --mount \
type=bind,\
source="$(pwd)"/.,\
target=/spark-word-count \
-i -t spark_env \
/bin/bash 
# inside docker bash 
root@942744030b57:~ cd ../spark-word-count && sbt clean compile && sbt run 
root@942744030b57:~ spark-submit /spark-word-count/target/scala-2.11/spark-scala-word-count-assembly-1.0.jar

```

### Reference 
- https://github.com/mahesh2492/spark-on-mesos


