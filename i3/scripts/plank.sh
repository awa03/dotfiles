#!/bin/sh
# Wait for Plank to start
sleep 2

# Get all window IDs for Plank
WINDOW_IDS=$(xdotool search --name plank)

# Set _NET_WM_STRUT_PARTIAL for each window ID
for WINDOW_ID in $WINDOW_IDS; do
    xprop -id $WINDOW_ID -f _NET_WM_STRUT_PARTIAL 32a -set _NET_WM_STRUT_PARTIAL 0,0,0,0,0,1920,0,0
done

