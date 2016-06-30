#!/bin/sh
 
ssh app@104.131.56.153 <<EOF
  cd ~/hello-jenkins
  git pull
  npm install --production
  forever restartall
  exit
EOF