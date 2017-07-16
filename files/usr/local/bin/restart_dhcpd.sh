#!/bin/sh

#service isc-dhcp-server status|grep "dhcpd is not running"; echo "$?"
#Status of ISC DHCP server: dhcpd is not running.
#0

#service isc-dhcp-server status|grep "dhcpd is running"; echo "$?"
#1

#service isc-dhcp-server status
#service isc-dhcp-server restart


#service isc-dhcp-server status|grep "dhcpd is running"
/etc/init.d/isc-dhcp-server status|grep "dhcpd is running"
DHCPD_STATUS=$?
echo "dhcpd status: $DHCPD_STATUS"

while [ $DHCPD_STATUS -eq 1 ]
do
        echo "Restarting dhcpd @ `date`"
        /etc/init.d/isc-dhcp-server restart
        echo "Sleeping 10 seconds"
        sleep 10
        echo "Checking status of dhcpd"
        /etc/init.d/isc-dhcp-server status|grep "dhcpd is running"
        DHCPD_STATUS=$?
        echo "dhcpd status: $DHCPD_STATUS"
done


