#!/bin/bash

# start tcpdump 

#echo "$*"

if [ $# -lt 2 ]
then
  echo "Syntax: `basename $0` remote_host interface options"
  exit
else
  REMOTE=$1
  INTERFACE=$2
  shift 2
fi

#echo "$*"

#exit

FILENAME="tcpdump.$REMOTE.`date +%Y%m%d-%H%M%S`"

echo "tcpdump -s 0 -U -n -w - -i $INTERFACE $*" > $FILENAME.script
ssh -q $REMOTE < $FILENAME.script > $FILENAME.pcap
#ssh $REMOTE < $FILENAME.script |tail -n +3 > $FILENAME.pcap

rm $FILENAME.tmp 2>/dev/null
rm $FILENAME.fifo 2>/dev/null
#rm $FILENAME.script 2>/dev/null

