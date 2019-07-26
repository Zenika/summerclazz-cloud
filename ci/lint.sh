#!/usr/bin/env bash

# See rules here: https://github.com/opencontainers/image-spec/blob/v1.0.0/annotations.md#pre-defined-annotation-keys


check_dockerfile() {
  DOCKERFILE=$1

  docker run \
    --rm \
    -v $(pwd)/$DOCKERFILE:/usr/src/app/Dockerfile:ro \
    -i hadolint/hadolint \
    hadolint /usr/src/app/Dockerfile
}

check_dockerfile Dockerfile.jvm
check_dockerfile Dockerfile.native
