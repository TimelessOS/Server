#!/bin/bash

set -eux

# Install MKOSI
MKOSI_DIR="/tmp/mkosi"
if [ ! -d "$MKOSI_DIR" ]; then
	mkdir -p "$MKOSI_DIR"
	git clone https://github.com/systemd/mkosi "$MKOSI_DIR"
fi

# Build
time "$MKOSI_DIR/bin/mkosi" \
	--compress-output=zstd \
	--source-date-epoch=0 \
	--seed=5678 \
	--force \
	--profile=arm
# Most of these args are just reproducability.
