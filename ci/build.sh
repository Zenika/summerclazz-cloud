#!/usr/bin/env bash

if [[ ! -z $BUILD_PROFILE ]]; then
  DOCKERFILE=Dockerfile.$BUILD_PROFILE
else
  DOCKERFILE=Dockerfile.jvm
fi

echo Using profile $BUILD_PROFILE
docker build . \
  -f $DOCKERFILE \
  -t pyaillet/summerclazz