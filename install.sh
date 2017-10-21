#!/bin/bash

URL=https://raw.githubusercontent.com/petitviolet/slack.sh/master/slack
DIST=/usr/local/bin/slack.sh

wget $URL -O $DIST
chmod +x $DIST

if [ $? == 0 ]; then
  echo "SUCCESS!"
  sh -c "$DIST help"
else
  echo "FAIL..."
fi
