#!/bin/bash
cd "$( dirname "${BASH_SOURCE[0]}" )"

docker rm -f website
docker pull riobus/website && \
docker run -it -d --name website \
	-p 80:9000 \
	--restart=unless-stopped \
	riobus/website

cd - >/dev/null