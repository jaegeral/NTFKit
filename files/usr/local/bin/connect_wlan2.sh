#!/bin/sh
date
iw wlan2 connect Courtyard_GUEST
iw wlan2 link
dhclient wlan2
