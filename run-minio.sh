#!/bin/bash

docker run --rm -it --name minio \
    -e "MINIO_ACCESS_KEY=$(cat access_key)" \
    -e "MINIO_SECRET_KEY=$(cat secret_key)" \
    -p 9000:9000 \
    -v /opt/lambda/data/minio/data1:/data \
    minio/minio server \
    http://192.168.0.163/data \
    http://192.168.0.155/data \
    http://192.168.0.95/data \
    http://192.168.0.82/data 

#MINIO_ACCESS_KEY=$(cat access_key) MINIO_SECRET_KEY=$(cat secret_key) ./minio-linux server \
    #http://192.168.0.163/opt/lambda/data/minio/data1 \
    #http://192.168.0.155/opt/lambda/data/minio/data1 \
    #http://192.168.0.95/opt/lambda/data/minio/data1 \
    #http://192.168.0.82/opt/lambda/data/minio/data1
