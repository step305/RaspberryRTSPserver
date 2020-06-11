#!/bin/bash
./RTSPserver &
raspivid -t 0 -h 540 -w 960 -fps 25 -b 4000000 -o - | gst-launch-1.0 -v fdsrc ! h264parse ! rtph264pay config-interval=1 pt=96 ! udpsink host=127.0.0.1 port=5000 &
