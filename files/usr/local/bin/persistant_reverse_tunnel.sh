#!/bin/bash

if [ $# -eq 0 ]
then
  SERVER=vps03.aydell.com
  PORT=9010
else
  SERVER=$1
  PORT=$2
fi

INTERFACE=192.168.42.1
OUTDIR=/var/log
TIMESTAMP=`date +%Y%m%d-%H%M%S`
TEMPLATE=`hostname`.ssh_proxy.$SERVER.$PORT.$TIMESTAMP.XXXXXX
FILENAME=`mktemp -t $TEMPLATE -p $OUTDIR`
touch $FILENAME

createTunnel() {
  date >> $FILENAME
  echo "ssh -D $INTERFACE:$PORT -Nf -R $PORT:localhost:22 $SERVER" >> $FILENAME 2>&1
  ssh -D $INTERFACE:$PORT -Nf -R $PORT:localhost:22 $SERVER >> $FILENAME 2>&1

  if [[ $? -eq 0 ]]; then
    echo Tunnel to jumpbox created successfully
  else
    echo An error occurred creating a tunnel to jumpbox. RC was $?
  fi
}

/bin/pidof ssh|grep $PORT
if [[ $? -ne 0 ]]; then
  echo Creating new tunnel connection
  createTunnel
fi
