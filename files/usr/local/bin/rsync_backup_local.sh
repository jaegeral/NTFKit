#!/bin/sh

BACKUP_DISK='sda1'

mount|cut -f 3 -d ' '|grep -v ^/mnt|
  while read MOUNT_POINT
  do 
    BACKUP_PATH=/mnt/$BACKUP_DISK/`hostname`$MOUNT_POINT
    if [ ! -d $BACKUP_PATH ]
    then
      mkdir $BACKUP_PATH
    fi
    echo "START: Backup $MOUNT_POINT to $BACKUP_PATH"
    rsync -vrltDPx $MOUNT_POINT/* $BACKUP_PATH
    ls -tlr $BACKUP_PATH
    echo "END: Backup $MOUNT_POINT to $BACKUP_PATH"
  done

