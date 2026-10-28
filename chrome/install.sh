#!/usr/bin/bash

set -e

apt-get update 
apt-get install -y apt-transport-https ca-certificates curl gnupg --no-install-recommends
curl -sSL https://dl.google.com/linux/linux_signing_key.pub | gpg --dearmor -o /usr/share/keyrings/google-chrome-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/google-chrome-keyring.gpg] https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list
apt-get update
apt-get install -y google-chrome-stable fontconfig fonts-ipafont-gothic fonts-wqy-zenhei fonts-thai-tlwg fonts-symbola fonts-noto fonts-freefont-ttf --no-install-recommends
