#!/bin/sh

# Monitor persistant ssh tunnels

PROXY_COUNT=3
PROXY_SCRIPT=/usr/local/bin/start_all_proxies.sh

date

ACTIVE_PROXIES=`lsof -i|grep ^ssh|grep LISTEN|grep raspberry|wc|awk '{ print $1}'`

if [ $PROXY_COUNT -ne $ACTIVE_PROXIES ]
then
  echo "PROXY_COUNT ($PROXY_COUNT) does not match ACTIVE_PROXIES ($ACTIVE_PROXIES)"
  echo "RESTARTING proxies using script: $PROXY_SCRIPT"
  $PROXY_SCRIPT
fi
