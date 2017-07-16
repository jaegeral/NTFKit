#!/bin/bash
# This script reads from STDIN a list of hosts and interfaces to run tcpdump on with a given list of options

#cat geis-idmz-fw2.interface.list|while read INTERFACE; do echo "START Interface: $INTERFACE"; tcpdump_via_ssh.sh geis-idmz-fw2.fw.basf-corp.com $INTERFACE ' stp'; echo "END Interface: $INTERFACE"; done

# Set global variables
#Default tcpdupm options
DEFAULT_OPTIONS=' -e -s0 -U -nn -w - '
#This option will stop the capture after a 10 packets are received
#COUNT_OPTION=' -c 5 '
#This setting will not use the COUNT option
COUNT_OPTION=''

# start 

#echo "$*"

#exit

if [ $# -lt 2 ]
then
  echo "Syntax: `basename $0` remote options"
  exit
else
  REMOTE=$1
  shift 1
fi

FILENAME="`pwd`/tcpdump.$REMOTE.`date +%Y%m%d-%H%M%S`"
SCRIPT="$FILENAME.script"
touch $SCRIPT

while read INTERFACE
do 
  # Build script file
  echo "START Interface: $INTERFACE"
  SCRIPT="$FILENAME.$INTERFACE"
  echo "tcpdump $COUNT_OPTION $DEFAULT_OPTIONS -i $INTERFACE $*" >> $SCRIPT
  echo "END Interface: $INTERFACE"
done
  
# Create ControlMaster Connection
ssh $REMOTE -t "touch .hushlogin"

ls $FILENAME.*|
while read SCRIPT
do
  # Execute ssh and command script
  ssh $REMOTE 'bash -s '< $SCRIPT > $SCRIPT.pcap 
done
