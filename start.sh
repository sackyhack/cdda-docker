#!/bin/bash

# Start virtual desktop
Xvfb :1 -screen 0 1024x768x16 &
export DISPLAY=:1

# Start window manager
startlxde &

# Start VNC server (no password)
x11vnc -display :1 -forever -nopw -shared -bg

# Start noVNC
websockify --web=/opt/novnc 6080 localhost:5900 &

sleep 2

# Launch Cataclysm (tiles)
cd /workspace/src
./cataclysm-tlg-tiles --basepath ./ --userdir /workspace/saves
