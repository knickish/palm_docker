#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
${DIR}/build_docker_container.sh

docker run \
    -v ${DIR}/../artifacts:/artifacts \
    -v ${DIR}/../src:/palm/Src \
    -e PRC_NAME="${PRC_NAME:=test}" \
    -e PRC_CREATOR="${PRC_CREATOR:=test}" \
    palm_dev:latest