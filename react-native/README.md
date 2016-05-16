## VMS Easy setup development environment

Use these instructions to setup a temporary* development environment of this project.

1. Create a new [Virtual Machine](http://vms.codeforeauclaire.org/) >> SSH in >> Run (or read) vms quick install
 1. `curl -L -o- https://rawgit.com/codeforeauclaire/bikeroutes/react/react-native/vmsquickinstall/vmsquickinstall.sh | bash`
1. Prepare to run npm scripts installed by and with nvm (or reconnect)
 1. `. /root/.nvm/nvm.sh`
1. Setup Android Dev Studio
 1. (Work in progress)
 1. Connect via vnc to {vms-ip}:5901 using password `unsecure`
     1. Testing using [TightVNC for Windows](http://www.tightvnc.com/) though others should work
 1. Follow [Facebook Getting Started::Android-Studio](https://facebook.github.io/react-native/docs/getting-started.html#android-studio)
1. Run app
 1. (Work in progress)
 1. `(cd ~/bikeroutes/react && react-native run-android)`
 1. (Edit a file, ses results in vnc connection?)

*For a permanent development environment we recommend you read the referenced script above to install locally.
