FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=America/Los_Angeles

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
# For VNC
    libsdl2-image-dev libjpeg-turbo8-dev libtiff-dev libwebp-dev libzip-dev libzstd-dev \
    libsdl2-mixer-dev libflac-dev libasound2-dev libfreetype6-dev build-essential astyle ccache
	
# For VNC
RUN apt-get update && apt-get install -y \
    libncursesw5-dev \
    libcurl4-openssl-dev \
    liblua5.3-dev lua5.3 \
    pkg-config \
    xorg \
    xfce4 xfce4-goodies \
    tigervnc-standalone-server \
    websockify \
    supervisor \
    novnc \
    xterm \
    wget unzip websockify lxterminal \
    x11vnc xvfb lxde-core ninja-build \
    libpulse-dev libfontconfig1-dev libfreetype6-dev \
    libglib2.0-dev

# Setup VNC
RUN mkdir -p /root/.vnc
COPY .vnc/xstartup /root/.vnc/xstartup
RUN chmod +x /root/.vnc/xstartup

#noVNC setup
RUN ln -s /usr/share/novnc /opt/novnc \
 && ln -s /usr/share/novnc/vnc_lite.html /opt/novnc/index.html

EXPOSE 5900 6080

COPY .devcontainer/supervisord.conf /etc/supervisord.conf

#CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]

RUN groupadd -g 1000 vscode && useradd -m -u 1000 -g vscode -s /bin/bash vscode && echo "vscode ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Set working directory
WORKDIR /workspace

COPY start.sh /usr/local/bin/start.sh
RUN chmod 755 /usr/local/bin/start.sh

USER vscode

CMD ["/usr/local/bin/start.sh"]
