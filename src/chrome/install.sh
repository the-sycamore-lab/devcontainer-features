#!/usr/bin/env bash

set -e

if [ "$(dpkg --print-architecture)" != "amd64" ]; then
    echo "Google Chrome is only available for amd64." >&2
    exit 1
fi

export DEBIAN_FRONTEND=noninteractive

apt-get update
apt-get install -y ca-certificates curl gnupg --no-install-recommends
curl -sSL https://dl.google.com/linux/linux_signing_key.pub | gpg --dearmor -o /usr/share/keyrings/google-chrome-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/google-chrome-keyring.gpg] https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list
apt-get update
apt-get install -y google-chrome-stable fontconfig fonts-ipafont-gothic fonts-wqy-zenhei fonts-thai-tlwg fonts-symbola fonts-noto fonts-freefont-ttf --no-install-recommends
rm -rf /var/lib/apt/lists/*
