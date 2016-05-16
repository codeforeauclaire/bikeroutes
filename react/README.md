## VMS Easy setup development environment

Use these instructions to setup a temporary* development environment of this project.

 1. Create a new [Virtual Machine](http://vms.codeforeauclaire.org/) >> SSH in >> Run (or read) vms quick install
  1. `curl -L -o- https://rawgit.com/codeforeauclaire/bikeroutes/react/react/vmsquickinstall.sh | bash`
 1. Prepare to run npm scripts installed by and with nvm (or reconnect)
  1. `. /root/.nvm/nvm.sh`
 1. Run app
  1. `(cd ~/bikeroutes/react && ./bin/run-dev-server)`
  1. Load http://{vms-ip}:8080/webpack-dev-server/ in your browser
  1. Edit a .jsx file >> see changes in your browser

*For a permanent development environment we recommend you read the referenced script above to install locally.
