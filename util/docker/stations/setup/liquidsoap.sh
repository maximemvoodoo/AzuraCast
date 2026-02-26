#!/bin/bash
set -e
set -x

sudo apt-get install -y opam build-essential pkg-config libpcre2-dev libgmp-dev libcurl4-gnutls-dev
opam init -y
opam exec -- bash /bd_build/stations/setup/liquidsoap.sh -H