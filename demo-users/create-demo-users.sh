#!/usr/bin/env bash
set -e

# Install nvm
VERSION=v0.37.2
curl -o- "https://raw.githubusercontent.com/nvm-sh/nvm/${VERSION}/install.sh" | bash
source ~/.nvm/nvm.sh
nvm install --lts

# Run app to create the demo users
npm install
node app.js
