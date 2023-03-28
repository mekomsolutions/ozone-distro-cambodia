#!/usr/bin/env bash

# Install nvm
VERSION=v0.37.2
curl -o- "https://raw.githubusercontent.com/nvm-sh/nvm/${VERSION}/install.sh" | bash
nvm install --lts
npm install

# Run app to create users
node app.js
exit 0