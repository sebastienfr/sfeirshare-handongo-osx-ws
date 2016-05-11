#!/bin/bash

if hash gdate 2>/dev/null; then
   /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Program & Tools installation"
brew bundle

echo "Setup go"
export GOPATH=$(pwd)
./godeps.sh &

echo "Setup docker images"
docker-machine create --driver virtualbox default 2>/dev/null
eval $(docker-machine env default)
./dockerpull.sh &

echo "Start Intellij and install go plugin"
echo "go to IntelliJ > Preferences > Plugin > Go (Search in repositories) > Install"

