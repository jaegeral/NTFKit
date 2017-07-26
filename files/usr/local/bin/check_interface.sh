#!/bin/bash
##################################################################
# Settings
# Where and what you want to call the Lockfile
LOCKFILE='/var/run/check_interface.pid'
# Which Interface do you want to check/fix
INTERFACE='wlan1'
# Which address do you want to ping to see if you can connect
PING_ADDRESS='127.0.0.1'
##################################################################
echo
echo "Starting interface check for $INTERFACE"
date
echo 

# Check to see if there is a lock file
if [ -e $LOCKFILE ]; then
    # A LOCKFILE exists... Lets check to see if it is still valid
    pid=`cat $LOCKFILE`
    if kill -0 &>1 > /dev/null $pid; then
        # Still Valid... lets let it be...
        #echo "Process still running, Lockfile valid"
        exit 1
    else
        # Old Lockfile, Remove it
        #echo "Old LOCKFILE, Removing Lockfile"
        rm $LOCKFILE
    fi
fi
# If we get here, set a lock file using our current PID#
#echo "Setting Lockfile"
echo $$ > $LOCKFILE

# We can perform check
echo "Performing Network check for $INTERFACE"
/bin/ping -c 2 -I $INTERFACE $PING_ADDRESS > /dev/null 2> /dev/null
if [ $? -ge 1 ] ; then
    echo "Network connection down! Attempting reconnection."
    /sbin/ifdown $INTERFACE
    sleep 5
    /sbin/ifup --force $INTERFACE
else
    echo "Network is Okay"   
fi


# Check is complete, Remove Lock file and exit
#echo "process is complete, removing LOCKFILE"
rm $LOCKFILE
exit 0

##################################################################
# End of Script
