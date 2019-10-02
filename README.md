### spark-scala-word-count
- dev 


### Quick start
```bash
# STEP 1) download the used dependencies.
$ sbt clean compile

# STEP 2) run app locally
$ sbt run

# STEP 3) create jars from spark scala scriots 
$ sbt assembly

# STEP 4) run the spark word count via spark submit 
$ spark-submit /Users/jerryliu/spark-scala-word-count/target/scala-2.11/spark-scala-word-count-assembly-1.0.jar

```

### Quick start (Docker)
```bash 


$ git clone https://github.com/yennanliu/spark-scala-word-count.git
$ cd spark-scala-word-count
# docker build 
$ docker build . -t spark_env
# docker run 
$ docker run  --mount \
type=bind,\
source="$(pwd)"/.,\
target=/spark-word-count \
-i -t spark_env \
/bin/bash 
# inside docker bash 
root@942744030b57:~#  cd ../spark-word-count && sbt clean compile && sbt run 

```

### Reference 
- https://github.com/mahesh2492/spark-on-mesos


