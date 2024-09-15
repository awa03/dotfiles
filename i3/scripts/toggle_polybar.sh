#!/bin/bash

if pgrep -x "polybar" > /dev/null
then
    pkill polybar
else
    # Start Polybar for primary monitor
    polybar &
fi

