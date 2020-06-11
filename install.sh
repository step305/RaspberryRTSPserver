git clone https://github.com/step305/RaspberryRTSPserver.git

sudo apt-get install libgstrtspserver-1.0-dev
sudo apt-get install gstreamer1.0-tools
git clone https://github.com/GStreamer/gst-rtsp-server.git
cd RaspberryRTSPserver

gcc -o RTSPserver  RTSPserver.c  `pkg-config --cflags --libs gstreamer-rtsp-server-1.0`

sudo chmod +x launch.sh

./launch.sh
