#!/bin/bash
# in lieu of restarting the shell
\. "$HOME/.nvm/nvm.sh"

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

# Download and install latest Node.js + latest NPM version
nvm install node --latest-npm
nvm use node

# Verify the Node.js version:
node -v # Should print "v23.9.0".
nvm current # Should print "v23.9.0".

# Verify npm version:
npm -v # Should print "10.9.2".
