#!/bin/bash

set -eux

# Install MKOSI
MKOSI_DIR="/tmp/mkosi"
if [ ! -d "$MKOSI_DIR" ]; then
    mkdir -p "$MKOSI_DIR"
    git clone https://github.com/systemd/mkosi "$MKOSI_DIR"
fi


# Build
time "$MKOSI_DIR/bin/mkosi" --force
