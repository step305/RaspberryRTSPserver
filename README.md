# RaspberryRTSPserver

RTSP server on Raspberry Pi + GStreamer

_Code based on example from libgstrtspserver-1.0-dev .. or somewhere else, don't remember_

**Install:**

**_git clone https://github.com/step305/RaspberryRTSPserver.git_**

On your Raspberry Pi go to home dir using terminal and enter commands

**_sudo chmod +x RaspberryRTSPserver/install.sh
./RaspberryRTSPserver/install.sh
_**

**Tests:**

On Raspberry Pi (not sure, but old versions, with raspivid bundled) use commands (as in launch.sh mentioned):
To start server:

**_./RTSPserver &_**

To run video stream and redirect it to RTSP server:

**_raspivid -t 0 -h 540 -w 960 -fps 25 -b 4000000 -o - | gst-launch-1.0 -v fdsrc ! h264parse ! rtph264pay config-interval=1 pt=96 ! udpsink host=127.0.0.1 port=5000 &_**

Sample commands works with RaspiCam connected to CSI port

On PC (or somewhere else - on client side) use python script provided in test_cam.py to get video from Raspberry Pi.
