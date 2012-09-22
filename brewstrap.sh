#!/usr/bin/env bash

BREWSTRAP_BASE="https://github.com/DAMConsortium/brewstrap"
PLATFORM=`uname -s`
BREWSTRAP_BIN="${BREWSTRAP_BASE}/raw/develop/brewstrap_${PLATFORM}.sh"

curl -fsSL "${BREWSTRAP_BIN}" > /tmp/${USER}-brewstrap_${PLATFORM}.sh

exec bash /tmp/${USER}-brewstrap_${PLATFORM}.sh