#!/bin/sh
# check dnsmasq and restart if not running

/etc/init.d/dnsmasq status|grep "dnsmasq(running)"
DNSMASQ_STATUS=$?
echo "dnsmasq status: $DNSMASQ_STATUS"

while [ $DNSMASQ_STATUS -eq 1 ]
do
	echo "Restarting dnsmasq @ `date`"
	/etc/init.d/dnsmasq restart
	echo "Sleeping 10 seconds"
	sleep 10
	echo "Checking status of dnsmasq"
	/etc/init.d/dnsmasq status|grep "dnsmasq(running)"
	DNSMASQ_STATUS=$?
	echo "dnsmasq status: $DNSMASQ_STATUS"
done

