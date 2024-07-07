#!/bin/bash

keyword=$1

if [ -z "keyword" ]; then
  echo "error: no search keyword"
fi

pod_name=$(kubectl get pods -n dubbo-demo | grep $keyword | awk '{print $1}' | head -n 1)

kubectl logs -n dubbo-demo $pod_name --follow