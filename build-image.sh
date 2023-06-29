#!/bin/bash
set -e -u -o pipefail

if [ $# -lt 1 ]; then
  echo 'version is required'
  exit 1
fi

VERSION=$1

docker build . -t wechat-midjourney:${VERSION}

docker tag wechat-midjourney:${VERSION} iddddg/wechat-midjourney:${VERSION}
docker push iddddg/wechat-midjourney:${VERSION}