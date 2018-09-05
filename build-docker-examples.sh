#!/bin/bash
set -x

while [[ $# -gt 0 ]]
do
key="$1"
case $key in
    --no-cache)
    NO_CACHE="--no-cache"
    ;;
    --output-sha)
    # output the SHA sum of the last built file (either inspir-ray/deploy
    # or inspir-ray/examples, suppressing all other output. This is useful
    # for scripting tests, especially when builds of different versions
    # are running on the same machine. It also can facilitate cleanup.
    OUTPUT_SHA=YES
    ;;
    *)
    echo "Usage: build-docker.sh [ --no-cache ] [ --sha-sums ]"
    exit 1
esac
shift
done

# Build the examples, unless skipped
if [ $OUTPUT_SHA ]; then
    IMAGE_SHA=$(docker build $NO_CACHE -q -t 192.168.1.40:5000/inspir-ray/examples docker/examples)
else
    docker build --no-cache -t 192.168.1.40:5000/inspir-ray/examples docker/examples
fi

if [ $OUTPUT_SHA ]; then
    echo $IMAGE_SHA | sed 's/sha256://'
fi
