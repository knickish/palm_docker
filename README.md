## PALM DOCKER BUILDER

Usage:
1. clone repo
2. install docker
3. add source code to `src` directory
4. run `PRC_NAME="HELLO_WORLD" ./compile.sh` in `linux` directory, replacing "HELLO_WORLD" with the desired name for the compiled PRC
5. retrieve .prc from artifacts directory

TODO:
1. add windows support
2. support for changing `.prc` name at compile time
3. add downloaded code to local directory so that ide tools can be used

Credit goes to [Palm2000](https://palm2000.com/projects/compilingAndBuildingPalmOsAppsOnUbuntu2004LTS.php) for collecting the necessary resources, and to Dmitry Grinberg for almost all of the toolchain work. This is only a docker container that makes their work more accessible.