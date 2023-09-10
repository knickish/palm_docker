#!/bin/bash

cd /palm
make TARGET='${PRC_NAME}' CREATOR='${PRC_CREATOR}' && mv *.prc /artifacts
