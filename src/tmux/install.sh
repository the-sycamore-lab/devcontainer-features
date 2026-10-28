#!/usr/bin/env bash

set -e

export DEBIAN_FRONTEND=noninteractive

apt-get update
apt-get install -y tmux --no-install-recommends
rm -rf /var/lib/apt/lists/*
