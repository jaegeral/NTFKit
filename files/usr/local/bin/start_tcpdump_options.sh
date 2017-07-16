#!/bin/bash

# start tcpdump 

#echo "$*"

if [ $# -lt 1 ]
then
  echo "Syntax: `basename $0` interface options"
  exit
else
  INTERFACE=$1
  shift 1
fi

if [ $# -lt 1 ]
then
  AND_VAR=""
else
  AND_VAR=" and "
fi

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

if [ ! -d $OUTDIR ]
then
  mkdir $OUTDIR
fi

TIMESTAMP=`date +%Y%m%d-%H%M%S`
INTERFACE_MAC=`ifconfig $INTERFACE | grep HWaddr | awk '{ print $5 }'`
TEMPLATE=`hostname`.XXXXXX
FILENAME=`mktemp -t $TEMPLATE -p $OUTDIR`.$INTERFACE.options.pcap
START_FILE="$FILENAME.START.$TIMESTAMP"
touch $START_FILE
FILE_COUNT=100
FILE_SIZE=10

date
echo "/usr/sbin/tcpdump -s 0 -U -n -i $INTERFACE -C $FILE_SIZE -W $FILE_COUNT -w $FILENAME. not ether host $INTERFACE_MAC $AND_VAR $* &" >> $START_FILE
/usr/sbin/tcpdump -s 0 -U -n -i $INTERFACE -C $FILE_SIZE -W $FILE_COUNT -w $FILENAME. not ether host $INTERFACE_MAC $AND_VAR $* &
