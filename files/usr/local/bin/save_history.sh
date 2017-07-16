#Set Destination file base name
DEST_FILE_BASE=`hostname`.$USER.history_`date +%Y%m%d-%H%M%S`.txt

# Save to user folder
DEST_FOLDER_BASE=~
if [ -d $DEST_FOLDER_BASE ]; then
  DEST_FILE="$DEST_FOLDER_BASE/$DEST_FILE_BASE"
  echo "DEST_FILE: $DEST_FILE"
  history > $DEST_FILE
fi

# Save to history_files folder (host)
DEST_FOLDER_BASE=~/Downloads/VM_workspace/history_files/`hostname|cut -f 1 -d '.'`
if [ -d $DEST_FOLDER_BASE ]; then
  DEST_FILE="$DEST_FOLDER_BASE/$DEST_FILE_BASE"
  echo "DEST_FILE: $DEST_FILE"
  history > $DEST_FILE
fi

# Save to history_files folder (VM)
DEST_FOLDER_BASE=/mnt/hgfs/VM_workspace/history_files/`hostname|cut -f 1 -d '.'`
if [ -d $DEST_FOLDER_BASE ]; then
  DEST_FILE="$DEST_FOLDER_BASE/$DEST_FILE_BASE"
  echo "DEST_FILE: $DEST_FILE"
  history > $DEST_FILE
fi

