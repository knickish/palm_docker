## PALM DOCKER BUILDER

Usage:
1. clone repo
1. install docker
1. `docker pull knickish/palm_docker:latest`
1. add source code to `src` directory
1. run `PRC_NAME="HELLO_WORLD" ./compile.sh` in `linux` directory, replacing "HELLO_WORLD" with the desired name for the compiled PRC
1. retrieve .prc from artifacts directory

TODO:
1. add windows support
1. add downloaded code to local directory so that ide tools can be used

Credit goes to [Palm2000](https://palm2000.com/projects/compilingAndBuildingPalmOsAppsOnUbuntu2004LTS.php) for collecting the necessary resources, and to Dmitry Grinberg for almost all of the toolchain work. This is only a docker container that makes their work more accessible.