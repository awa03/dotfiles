#!/bin/bash

sleep 0.1

window_id=$(xdotool getwindowfocus)
echo "Window ID: $window_id" >> /tmp/mouse-move.log

eval $(xdotool getwindowgeometry --shell $window_id)
echo "Window Geometry: X=$X, Y=$Y, WIDTH=$WIDTH, HEIGHT=$HEIGHT" >> /tmp/mouse-move.log

center_x=$((X + WIDTH / 2))
center_y=$((Y + HEIGHT / 2))

echo "Moving mouse to: $center_x, $center_y" >> /tmp/mouse-move.log

xdotool mousemove $center_x $center_y

