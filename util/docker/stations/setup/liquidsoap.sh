#!/bin/bash
set -e
set -x

sudo apt-get install -y opam build-essential pkg-config libpcre3-dev libgmp-dev libcurl4-gnutls-dev
opam init -y
opam install -y liquidsoap.2.3.3