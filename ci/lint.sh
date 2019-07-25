#!/usr/bin/env bash

# See rules here: https://github.com/opencontainers/image-spec/blob/v1.0.0/annotations.md#pre-defined-annotation-keys

docker run \
  --rm \
  -v $(pwd)/Dockerfile:/usr/src/app/Dockerfile:ro \
  -i hadolint/hadolint \
  hadolint /usr/src/app/Dockerfile