#!/bin/bash
curl -LO https://storage.googleapis.com/golang/go1.9.2.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.9.2.linux-amd64.tar.gz
if [ -f ~/.bashrc ]; then
  cp ~/.bashrc ~/.bashrc.BAK
  echo 'export PATH=$PATH:/usr/local/go/bin'>>~/.bashrc
fi

