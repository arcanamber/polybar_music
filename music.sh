#!/bin/sh

##############################
#                            #
# 2023 | https://electri.dev #
#                            #
##############################

player_status=$(playerctl --player=spotify status)
if [ "$player_status" = "Playing" ]; then
  np=$(playerctl --player=spotify metadata --format "{{ title }} - {{ artist }} - {{ album }}")
  position=$(playerctl --player=spotify metadata --format '{{ position }}')
  position_minutes=$((position/1000000/60))
  position_seconds=$(printf "%02d" $((position/1000000%60)))
  echo "$np - $position_minutes:$position_seconds"
else
  echo "~"
fi
