#! /bin/bash
export GOROOT=/opt

sudo mkdir -p $GOROOT

wget https://dl.google.com/go/go1.13.linux-amd64.tar.gz

sudo tar -C $GOROOT -xzf go1.13.linux-amd64.tar.gz

echo "export PATH=/opt/go/bin:$PATH" | sudo tee -a /etc/environment

echo " export GOPATH=/opt/go" | sudo tee -a /etc/environment

source /etc/environment