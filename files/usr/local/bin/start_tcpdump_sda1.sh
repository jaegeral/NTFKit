#!/bin/sh

echo Script name: $0
echo $# arguments

INTERFACE=eth1
TIMESTAMP=`date +%Y%m%d-%H%M%S`
TCPDUMP_MONITOR=/usr/local/bin/tcpdump_monitor.sh
FILE_COUNT=11

if [ -f /etc/ntfk.conf ]; then
  . /etc/ntfk.conf
  OUTDIR=$NTFK_PCAP_DIR
elif [ ! -d /mnt/sda1 ]; then
  OUTDIR=/var/log/pcap
elif [ -f /mnt/sda1/NOT_MOUNTED ]; then
  OUTDIR=/var/log/pcap
else
  OUTDIR=/mnt/sda1/pcap
fi

FILENAME=$OUTDIR/`hostname`.$TIMESTAMP

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
