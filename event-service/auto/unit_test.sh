#!/bin/bash
docker run --rm -v `pwd`/event-service/:/app limaofeng/gradle-alpine gradle  clean test