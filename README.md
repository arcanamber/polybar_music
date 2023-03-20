# polybar_music
Shell script using playerctl to show music status in Polybar.  
Dependencies: polybar, playerctl  
"--player=spotify" can be removed to allow for any player, or replaced with a specific player.  
"man playerctl" is your friend if you want to edit :)  
  
Place this in ~/.config/polybar/config.ini:

```
[module/music]
type=custom/script
exec=/path/to/script
interval=1

modules-center = music
```

"interval" updates the module every $interval seconds.  
Make sure the script has execute permissions.
