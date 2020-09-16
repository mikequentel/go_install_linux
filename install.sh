#!/bin/bash
DOWNLOAD_URL_PREFIX=https://dl.google.com/go
TAR_BALL=go1.15.2.linux-amd64.tar.gz
sudo rm -fr /usr/local/go || true
if [ ! -f ${TAR_BALL} ]; then
  echo "downloading ${DOWNLOAD_URL_PREFIX}/${TAR_BALL}"
  curl -LO ${DOWNLOAD_URL_PREFIX}/${TAR_BALL}
fi
sudo tar -C /usr/local -xzf ${TAR_BALL}
if [ -f ~/.bashrc ]; then
  cp ~/.bashrc ~/.bashrc.BAK
  mkdir -p ~/go/bin
  echo 'export GOPATH=~/go'>>~/.bashrc
  echo 'export GOBIN=${GOPATH}/bin'>>~/.bashrc
  echo 'export PATH=$PATH:/usr/local/go/bin'>>~/.bashrc
fi

