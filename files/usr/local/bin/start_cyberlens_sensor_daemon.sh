#!/bin/sh

/opt/CyberlensSensor/app/lib/cyberlens_sensor_daemon.rb start -- -i eth0 --file_link $1
