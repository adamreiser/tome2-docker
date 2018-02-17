#!/bin/bash

docker run --rm -it --network=none \
    --security-opt no-new-privileges \
    -v "${PWD}/data:/home/tome/.tome" tome2
