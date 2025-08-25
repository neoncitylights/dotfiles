#!/bin/bash
# in lieu of restarting the shell
\. "$HOME/.nvm/nvm.sh"

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

# Download and install latest Node.js + latest NPM version
nvm install node --latest-npm
nvm use node

# Verify the Node.js version, both of these should print the same
node -v
nvm current

# Verify npm version
npm -v
