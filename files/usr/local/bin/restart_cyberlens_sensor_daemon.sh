#!/bin/sh

/opt/CyberlensSensor/app/lib/cyberlens_sensor_daemon.rb restart -- -i eth0 --file_link $1
