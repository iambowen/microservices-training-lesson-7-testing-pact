#!/bin/bash
set -e

post_failure_message_to_slack() {
    echo "curl -X POST -H 'Content-type: application/json' \
    --data '{\"text\":\"the xxx xxx app is failed.\"}' \
 https://hooks.slack.com/services/T00000000/B00000000/XXXXXXXXXXXXXXXXXXXXXXXX"
}

mocha_not_existed(){
    echo "run 'npm install' first." 
    exit 1
}

[ -f ./node_modules/.bin/mocha ] || mocha_not_existed

./node_modules/.bin/mocha smoke_test.js || post_failure_message_to_slack