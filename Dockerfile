# ------------------------------------------------------------------------------
# Pull base image
FROM ubuntu:20.04

# ------------------------------------------------------------------------------
# Arguments
ARG WORKDIR=/root

RUN dpkg --add-architecture i386

# ------------------------------------------------------------------------------
# Install tools via apt
ENV DEBIAN_FRONTEND=noninteractive
RUN apt -y update && \
    apt -y install \
    make \
    libc6:i386 \
    libncurses5:i386 \
    libstdc++6:i386 \
    wget \
    unzip \
    && apt clean && rm -rf /var/lib/apt/lists

# ------------------------------------------------------------------------------

WORKDIR /palm
WORKDIR /tmp
RUN wget https://palm2000.com/data/compilingAndBuildingPalmOsAppsOnUbuntu2004LTS/palmdev_V2.zip \
    && unzip palmdev_V2.zip -d /tmp \
    && ls ./palmdev_V2 

RUN mv ./palmdev_V2/buildtools /palm \
    && mv ./palmdev_V2/linker.lkr /palm

ADD internal/Makefile /palm
WORKDIR /palm/Src

WORKDIR /artifacts

RUN chmod +x /palm/buildtools/pilrc3_2/bin/pilfont
RUN chmod +x /palm/buildtools/pilrc3_2/bin/pilrc

WORKDIR /helper_scripts
ADD internal/entrypoint.sh /helper_scripts

CMD ["/bin/bash","/helper_scripts/entrypoint.sh"]