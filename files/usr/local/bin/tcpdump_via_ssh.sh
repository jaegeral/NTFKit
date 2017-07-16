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

ssh $REMOTE touch .hushlogin

FILENAME="tcpdump.$REMOTE.$INTERFACE.`date +%Y%m%d-%H%M%S`.pcap"

mkfifo $FILENAME.fifo 2>/dev/null
#tcpdump -n -s0 -U -r - -C 10 -w $FILENAME < $FILENAME.fifo &

echo "tcpdump -e -s0 -U -n -w - -i $INTERFACE $*" > $FILENAME.script
ssh -q $REMOTE "tcpdump -e -s0 -U -n -w - -i $INTERFACE $*" > $FILENAME
#ssh -q $REMOTE "tcpdump -s0 -U -n -w - -i $INTERFACE $*" |tee test.pcap> $FILENAME.fifo
#ssh -q $REMOTE < $FILENAME.script > $FILENAME.fifo

rm $FILENAME.tmp 2>/dev/null
rm $FILENAME.fifo 2>/dev/null
#rm $FILENAME.script 2>/dev/null
