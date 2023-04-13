#Launch and play videos at random using the bookmarks list.
#Randomly switches VPN servers and browser user agent between videos.

#Array of fixed bookmark locations.
    urls=( 
    "xdotool mousemove 238 156 click --repeat 2 1"
    "xdotool mousemove 238 185 click --repeat 2 1"
    "xdotool mousemove 238 206 click --repeat 2 1"
    "xdotool mousemove 238 230 click --repeat 2 1"
    "xdotool mousemove 238 251 click --repeat 2 1"
    "xdotool mousemove 238 276 click --repeat 2 1"
    "xdotool mousemove 238 302 click --repeat 2 1"
    "xdotool mousemove 238 324 click --repeat 2 1"
    "xdotool mousemove 238 346 click --repeat 2 1" 
    "xdotool mousemove 238 370 click --repeat 2 1"
    "xdotool mousemove 238 395 click --repeat 2 1"
    "xdotool mousemove 238 424 click --repeat 2 1"
    )

#Actions: 
#Run vpn randomizer.
    ./vpnswitcher.sh
#Launch random bookmark and wait 4-8 seconds for page to load and press 'k' to start playback.    
    $(shuf -n1 -e "${urls[@]}")
    sleep $(shuf -i 4-8 -n1)    
    xdotool key --clearmodifiers k
#Allow video to run for random time between ~5-20 minutes.    
    sleep $(shuf -i 324-1104 -n1)
#Launch Google to leave site between video changes and wait between 20-60 seconds.    
    xdotool mousemove 228 441 click --repeat 2 1
    sleep $(shuf -i 20-60 -n1)
#Randomly switch browser user agent.    
    xdotool mousemove 1827 193 click 1
    sleep 2
    xdotool mousemove 1588 554 click 1
    sleep 3
    xdotool mousemove 1827 193 click 1
    sleep 2
#Restart script.    
    ./randomviews.sh
