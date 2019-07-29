#!/usr/bin/env bash

docker run \
  -v $(pwd)/config.js:/usr/src/app/config:ro \
  renovate/renovate:15
