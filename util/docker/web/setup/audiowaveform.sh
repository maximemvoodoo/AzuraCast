#!/bin/bash
set -e
set -x

# Per-architecture LS installs
ARCHITECTURE=amd64
if [[ "$(uname -m)" = "aarch64" ]]; then
    ARCHITECTURE=arm64
fi

apt-get install -y --no-install-recommends \
  libmad0 libsndfile1 libgd3
  
apt-get install -y --no-install-recommends \
  libid3tag0 libboost-program-options-dev libboost-filesystem-dev libboost-regex-dev

wget -O /tmp/audiowaveform.deb "https://github.com/bbc/audiowaveform/releases/download/1.10.1/audiowaveform_1.10.1-1-12_${ARCHITECTURE}.deb"

dpkg -i /tmp/audiowaveform.deb
apt-get install -y -f --no-install-recommends
rm -f /tmp/audiowaveform.deb