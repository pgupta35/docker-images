#!/bin/bash

docker build -t huanwei/rocketmq-broker-k8s:4.3.0 .
docker push huanwei/rocketmq-broker-k8s:4.3.0