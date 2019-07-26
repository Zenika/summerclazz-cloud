#!/usr/bin/env bash

DOCKERFILE=Dockerfile.${BUILD_PROFILE:-jvm}

docker build . \
  -f $DOCKERFILE \
  -t pyaillet/summerclazz