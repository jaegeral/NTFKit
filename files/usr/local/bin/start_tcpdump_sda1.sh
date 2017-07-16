#!/bin/sh

#OUTDIR=/var/log
OUTDIR=/mnt/sda1
INTERFACE=eth1
TIMESTAMP=`date +%Y%m%d-%H%M%S`
FILENAME=$OUTDIR/`hostname`.$TIMESTAMP
TCPDUMP_MONITOR=/usr/local/bin/tcpdump_monitor.sh
FILE_COUNT=11

echo Script name: $0
echo $# arguments 

if [ $# = 1 ]; 
then
  INTERFACE=$1
fi

if [ -d $OUTDIR ]
then
  touch $FILENAME.tcpdump.START
  /usr/sbin/tcpdump -i $INTERFACE -C 10 -W $FILE_COUNT -w $FILENAME.pcap. &
  TCPDUMP_PID=$!
  $TCPDUMP_MONITOR $FILENAME.pcap.`expr $FILE_COUNT - 1` $TCPDUMP_PID &
fi
