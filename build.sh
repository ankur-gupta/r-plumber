#!/bin/bash -x

CONTAINER_NAME=r-plumber
IMAGE_NAME=r-plumber

docker kill $CONTAINER_NAME
docker rm $CONTAINER_NAME
docker rmi $IMAGE_NAME

docker build -t $IMAGE_NAME .
docker run -itd -p 8080:8080 --name $CONTAINER_NAME $IMAGE_NAME



