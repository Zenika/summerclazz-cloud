#!/usr/bin/env bash

docker run \
  -v $(pwd)/ci:/usr/src/app/ci:ro \
  koalaman/shellcheck \
  /usr/src/app/ci/build.sh