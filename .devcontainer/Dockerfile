FROM ubuntu:22.04

# Install build dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    clang \
    git \
    cmake \
    gdb \
    nano \
    gettext \
    sudo

RUN apt-get -y install --no-install-recommends libsdl2-dev libsdl2-ttf-dev libharfbuzz-dev \
    libsdl2-image-dev libjpeg-turbo8-dev libtiff-dev libwebp-dev libzip-dev libzstd-dev \
    libsdl2-mixer-dev libflac-dev libasound2-dev libfreetype6-dev build-essential astyle ccache
	
RUN groupadd -g 1000 vscode && useradd -m -u 1000 -g vscode -s /bin/bash vscode && echo "vscode ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Set working directory
WORKDIR /workspace
USER vscode
