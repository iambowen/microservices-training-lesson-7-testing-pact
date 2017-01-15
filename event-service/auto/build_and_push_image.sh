#!/bin/bash

docker run --rm -v `pwd`/event-service/:/app limaofeng/gradle-alpine gradle  build 

docker build  `pwd`/event-service -t registry:5000/iambowen/event-service:${BUILD_NUMBER:-dev}

# docker push registry:5000/iambowen/event-service



