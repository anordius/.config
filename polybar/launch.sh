#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log

#launch polybar
polybar top &

if [[ $(xrandr -q | grep 'LVDS1 connected') ]]; then
  polybar top_external &
fi

echo "Bars launched..."
