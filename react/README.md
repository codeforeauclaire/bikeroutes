## VMS development enviornment setup instructions

 1. Create a new Digital Ocean Ubuntu 14.04.4 machine >> SSH in >> Run (or read) vms quick install
  1. `curl -L -o- https://rawgit.com/codeforeauclaire/bikeroutes/react/react/bin/vmsquickinstall.sh | bash`
  1. Run app
   1. `(cd ~/bikeroutes/react && ./bin/run-dev-server)`
   1. Load http://{vms-ip}:8080 in your browser
   1. Edit a .jsx file >> restart ./bin/run-dev-server >> see changes in your browser
