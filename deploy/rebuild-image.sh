#!/bin/bash

#eval $(minikube docker-env)         # make sure the images are created inside k8s cluster

cd ../dubbo-samples-xds-consumer/
mvn clean package -U
docker rmi dubbo-xds-consumer:v1.0
docker build . -t "dubbo-xds-consumer:v1.0"

cd ../dubbo-samples-xds-provider/
mvn clean package -U
docker rmi dubbo-xds-provider:v1.0
docker build . -t "dubbo-xds-provider:v1.0"

docker image prune -f       # delete old-version images
