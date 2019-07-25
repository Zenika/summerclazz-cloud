#!/usr/bin/env bash


run_test() {
    IMAGE=$1
    TEST_FILE=$2

    docker run \
        --rm \
        -v $(pwd)/ci/tests/:/usr/src/app/tests/:ro \
        -v /var/run/docker.sock:/var/run/docker.sock \
        -it gcr.io/gcp-runtimes/container-structure-test:latest \
        test \
        --image $IMAGE \
        --config /usr/src/app/tests/$TEST_FILE
}

run_test pyaillet/summerclazz summerclazz-metadata-tests.yaml
run_test pyaillet/summerclazz summerclazz-file-tests.yaml
run_test pyaillet/summerclazz summerclazz-command-tests.yaml