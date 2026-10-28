#!/usr/bin/env bash

set -e

export DEBIAN_FRONTEND=noninteractive
export ANDROID_HOME="/opt/android-sdk"

apt-get update
apt-get install -y sdkmanager --no-install-recommends

mkdir -p "$ANDROID_HOME"

yes | sdkmanager --licenses --sdk_root="$ANDROID_HOME" || true

sdkmanager --sdk_root="$ANDROID_HOME" --install \
    "platform-tools" \
    "build-tools;35.0.0" \
    "platforms;android-35"

chmod -R 777 "$ANDROID_HOME"
rm -rf /var/lib/apt/lists/*
