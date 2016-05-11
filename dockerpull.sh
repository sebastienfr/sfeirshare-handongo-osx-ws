#!/bin/bash

docker pull mongo:3.2 > dockerpull.log
docker pull golang:1.5-wheezy >> dockerpull.log
docker pull rabbitmq:3.6-management >> dockerpull.log

echo "Docker pull all images"
