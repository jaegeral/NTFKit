#!/bin/sh

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

date >> $FILENAME
echo "ssh -D $INTERFACE:$PORT -Nf $SERVER " >> $FILENAME 2>&1
ssh -D $INTERFACE:$PORT -Nf $SERVER >> $FILENAME 2>&1
