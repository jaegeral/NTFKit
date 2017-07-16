#!/bin/sh

/opt/CyberlensSensor/app/lib/cyberlens_sensor_daemon.rb restart -- -i eth1 --file_link $1
