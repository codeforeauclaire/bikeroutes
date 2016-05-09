#!/bin/bash

{ # this ensures the entire script is downloaded and run #


# Update all software & install new from package manager
sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get install -y git

## Install Node Version Manager w/recent node version
## Basic install
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash
## Source nvm so it works right away without relogging in
. /root/.nvm/nvm.sh
## Install & use / default a recent node version
nvm install v6.1.0

# Install webpack & it's dev-server with global access
npm install webpack -g
npm install webpack-dev-server -g

# Setup repository
git clone https://github.com/codeforeauclaire/bikeroutes.git /root/bikeroutes
(cd /root/bikeroutes && git checkout react)

# Install dependencies from package.json
(cd /root/bikeroutes/react && npm install --save)

} # this ensures the entire script is downloaded and run #
