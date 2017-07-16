#!/bin/sh

if [ $# -eq 0 ]
then
  INTERFACE=eth0
else
  INTERFACE=$1
fi
INTERFACE_MAC=`ifconfig $INTERFACE | grep HWaddr | awk '{ print $5 }'`

if [ ! -d /mnt/sda1 ]
then
  OUTDIR=/var/log/pcap
elif [ -f /mnt/sda1/NOT_MOUNTED ]
then
  OUTDIR=/var/log/pcap
else
  OUTDIR=/mnt/sda1/pcap
fi

if [ ! -d $OUTDIR ]
then
  mkdir $OUTDIR
fi

TIMESTAMP=`date +%Y%m%d-%H%M%S`
TEMPLATE=`hostname`.XXXXXX
FILENAME=`mktemp -t $TEMPLATE -p $OUTDIR`.$INTERFACE.arp.stp.pcap
START_FILE="$FILENAME.START.$TIMESTAMP"
touch $START_FILE
FILE_COUNT=100
FILE_SIZE=10

date
echo "/usr/sbin/tcpdump -s 0 -U -n -i $INTERFACE -C $FILE_SIZE -W $FILE_COUNT -w $FILENAME. \(arp or stp\) and not ether host $INTERFACE_MAC &"|tee $START_FILE
/usr/sbin/tcpdump -s 0 -U -n -i $INTERFACE -C $FILE_SIZE -W $FILE_COUNT -w $FILENAME. \(arp or stp\) and not ether host $INTERFACE_MAC &

