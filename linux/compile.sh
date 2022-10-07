#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
./build_docker_container.sh

docker run -t -i \
    -v ${DIR}/../artifacts:/artifacts \
    -v ${DIR}/../src:/palm/Src \
    palm_dev:latest