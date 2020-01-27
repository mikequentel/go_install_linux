#!/bin/bash
DOWNLOAD_URL_PREFIX=https://dl.google.com/go
TAR_BALL=go1.13.6.linux-amd64.tar.gz
curl -LO ${DOWNLOAD_URL_PREFIX}/${TAR_BALL}
sudo tar -C /usr/local -xzf ${TAR_BALL}
if [ -f ~/.bashrc ]; then
  cp ~/.bashrc ~/.bashrc.BAK
  mkdir -p ~/go/bin
  echo 'export GOPATH=~/go'>>~/.bashrc
  echo 'export GOBIN=${GOPATH}/bin'>>~/.bashrc
  echo 'export PATH=$PATH:/usr/local/go/bin'>>~/.bashrc
fi

