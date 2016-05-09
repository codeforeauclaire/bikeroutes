#!/bin/bash

{ # this ensures the entire script is downloaded and run #

# Installation references
# * Java 8 http://www.webupd8.org/2012/09/install-oracle-java-8-in-ubuntu-via-ppa.html
# * Android Studio https://paolorotolo.github.io/android-studio/
# ** https://github.com/PaoloRotolo/android-studio/issues/12
# ** https://stackoverflow.com/questions/29241640/errorunable-to-run-mksdcard-sdk-tool-in-ubuntu
# * React https://facebook.github.io/react-native/docs/getting-started.html
# VNC https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-vnc-on-ubuntu-14-04
# * VNC scripted password https://askubuntu.com/questions/328240/assign-vnc-password-using-script

# Install from package manager
## Add repositories to install stuff
sudo add-apt-repository -y ppa:webupd8team/java				# Java8
sudo add-apt-repository -y ppa:paolorotolo/android-studio	# Android Studio
## Update everything
sudo apt-get update && sudo apt-get upgrade -y
## Prepare for installation
### Prevent java installation propts
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
### Workaround Android Studio folder missing errors
sudo mkdir /opt
## Actual installs
sudo apt-get install -y git oracle-java8-installer android-studio build-essential xfce4 xfce4-goodies tightvncserver expect lib32z1 lib32ncurses5 lib32bz2-1.0 lib32stdc++6

# Setup repository
git clone https://github.com/codeforeauclaire/bikeroutes.git /root/bikeroutes
## Checkout branch (remove this later)
(cd /root/bikeroutes && git checkout react)
## Install dependencies from package.json
(cd /root/bikeroutes/react-native/project && npm install --save)


# Setup VNC Server
echo " THIS STUFF HERE IS A WIP, FIX IT!"
chmod +x /root/bikeroutes/react-native/vmsquickinstall/setvncserverpassword
/root/bikeroutes/react-native/vmsquickinstall/setvncserverpassword
cp /root/bikeroutes/react-native/vmsquickinstall/xstartup ~/.vnc/xstartup
sudo chmod +x ~/.vnc/xstartup
cp /root/bikeroutes/react-native/vmsquickinstall/vncserver /etc/init.d/vncserver
sudo chmod +x /etc/init.d/vncserver
sudo service vncserver restart
sudo update-rc.d vncserver defaults

## Install Node Version Manager w/recent node version
## Basic install
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash
## Source nvm so it works right away without relogging in
. /root/.nvm/nvm.sh
## Install & use / default a recent node version
nvm install v6.1.0

# React native command line interface
npm install -g react-native-cli

echo "Exiting...not sure we need the rest..."
exit

# Install webpack & it's dev-server with global access
npm install webpack -g
npm install webpack-dev-server -g

} # this ensures the entire script is downloaded and run #
