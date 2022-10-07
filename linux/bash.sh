#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"


docker run -t -i 
     --entrypoint /bin/bash \
      palm_dev:latest 