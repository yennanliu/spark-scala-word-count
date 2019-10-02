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

```

### Quick start (Docker)
```bash 


$ git clone https://github.com/yennanliu/spark-scala-word-count.git
$ cd spark-scala-word-count
$ docker build . -t spark_env
$ docker run  --mount \
type=bind,\
source="$(pwd)"/.,\
target=/spark-word-count \
-i -t spark_env \
/bin/bash -c 'cd ../spark-scala-word-count/'

```

### Reference 
- https://github.com/mahesh2492/spark-on-mesos


