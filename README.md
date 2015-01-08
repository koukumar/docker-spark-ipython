#spark-ipython

##What is this image?
This image contains spark in a single node configuration (from sequenceiq/docker-spark), ipython notebook.

##How to use this image?
```
docker run -d --name spark-ipython -p 8888:8888 logbase/spark-ipython
```
To mount a host drive for ipython storage:
```
docker run -d --name ispark-ipython -p 8888:8888 -v <path>:/ipython logbase/spark-ipython
```

To access shell of the container for loading files to hdfs:
```
docker exec -it spark-ipython /bin/bash
```
Inside the container, use hdfs/hadoop cmd to load files to hdfs.
