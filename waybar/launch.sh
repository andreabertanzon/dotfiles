#!/bin/sh
# kill running waybars in order to reload the config
#
killall waybar

# relaunch waybar, you could do it for different users
#
waybar &
