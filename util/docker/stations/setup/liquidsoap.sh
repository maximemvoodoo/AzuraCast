#!/bin/bash
set -euo pipefail
set -x

apt-get update
apt-get install -y --no-install-recommends \
  opam build-essential pkg-config libpcre2-dev libgmp-dev libcurl4-gnutls-dev

opam init -y --disable-sandboxing

# Prevent infinite recursion:
if [[ "${LIQUIDSOAP_OPAM_WRAPPED:-}" != "1" ]]; then
  export LIQUIDSOAP_OPAM_WRAPPED=1
  exec opam exec -- bash "$0" "$@"
fi

# --- put the *real* build logic below this line ---
# e.g. opam install -y liquidsoap.2.3.3
opam install -y liquidsoap.2.3.3