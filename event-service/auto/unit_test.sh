#!/bin/bash

docker run --rm -it -v `pwd`/event-service/:/app limaofeng/gradle-alpine gradle  clean test