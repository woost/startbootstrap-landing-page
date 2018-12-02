#!/usr/bin/env bash
# set -e

./build.sh
grep min.css index.html

git_sha="$(git rev-parse --short HEAD)"

docker pull woost/landing:latest
docker build --cache-from woost/landing:latest --tag woost/landing:$git_sha --tag woost/landing:latest .
