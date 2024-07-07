#!/bin/bash

kubectl apply -f Namespace.yml
kubectl delete -f Deployment.yml

./rebuild-image.sh

kubectl apply -f Deployment.yml
kubectl apply -f Service.yml
