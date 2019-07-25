#!/usr/bin/env bash

docker run \
  --rm \
  -v $(pwd)/Dockerfile:/usr/src/app/Dockerfile:ro \
  -i hadolint/hadolint \
  hadolint /usr/src/app/Dockerfile