#!/bin/bash
set -e
set -x


# Set up deb-multimedia, which has newer versions of ffmpeg and other multimedia libraries than Debian Bookworm.
# Remove existing ffmpeg
sudo apt remove -y ffmpeg

# Download FFmpeg 6.0.1 static build
cd /usr/local/src
sudo wget https://www.johnvansickle.com/ffmpeg/old-releases/ffmpeg-6.0.1-amd64-static.tar.xz

# Extract
sudo tar xf ffmpeg-6.0.1-amd64-static.tar.xz

# Install binaries
sudo cp ffmpeg-6.0.1-amd64-static/ffmpeg /usr/local/bin/
sudo cp ffmpeg-6.0.1-amd64-static/ffprobe /usr/local/bin/