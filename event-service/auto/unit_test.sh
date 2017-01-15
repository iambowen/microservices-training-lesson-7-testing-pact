#!/bin/bash
ls -al 
docker run --rm -v `pwd`/event-service/:/app limaofeng/gradle-alpine gradle  clean test