#!/bin/bash

cd /palm
make TARGET='${PRC_NAME}' && mv *.prc /artifacts
