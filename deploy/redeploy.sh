#!/bin/bash

kubectl delete -f Deployment.yml

./rebuild-image.sh

kubectl apply -f Deployment.yml
kubectl apply -f Service.yml
