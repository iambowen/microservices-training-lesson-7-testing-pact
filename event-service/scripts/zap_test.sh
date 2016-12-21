#!/bin/bash
set -e 

echo "start event service and do zap baseline scanning."

docker-compose up -d

docker run -t owasp/zap2docker-weekly zap-baseline.py -t http://localhost:8080/

echo "run security check against baidu.com"
docker run -t owasp/zap2docker-weekly zap-baseline.py -t http://localhost:8080/

docker-compose down



# [Baseline Scan](https://github.com/zaproxy/zaproxy/wiki/ZAP-Baseline-Scan)
# [OWASP Tools List]: https://www.owasp.org/index.php/Appendix_A:_Testing_Tools