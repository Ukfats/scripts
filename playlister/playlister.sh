#Launch and play videos from a Youtube Playlist.
#Selects the playlist at random, plays a random duration of each video, randomly moves across the timeline twice,
#before moving to the next item on the playlist.
#Switches VPN servers in between playlists.
#Sleep timers added to allow time for the actions to occur e.g VPN connects, webpage load times.

#Array of Playlist locations.
    list=( 
    "xdotool mousemove 692 893 click --repeat 2 1"
    "xdotool mousemove 877 825 click --repeat 2 1"
    "xdotool mousemove 1327 872 click --repeat 2 1"
    "xdotool mousemove 1524 898 click --repeat 2 1"
    "xdotool mousemove 1743 913 click --repeat 2 1"
    "xdotool mousemove 686 1044 click --repeat 2 1"
    )

#Array of Duration locations.
    dmarker=( 
    "xdotool mousemove 380 895 click --repeat 2 1"
    "xdotool mousemove 419 895 click --repeat 2 1"
    "xdotool mousemove 484 895 click --repeat 2 1"
    "xdotool mousemove 594 895 click --repeat 2 1"
    "xdotool mousemove 755 895 click --repeat 2 1"
    "xdotool mousemove 999 895 click --repeat 2 1"
    "xdotool mousemove 1209 895 click --repeat 2 1"
    )

#Looping function *test*
function_loop() {
    sleep $(shuf -i 27-39 -n1)
    $(shuf -n1 -e "${dmarker[@]}")
    sleep 2
    xdotool key --clearmodifiers k
    sleep $(shuf -i 147-623 -n1)
    $(shuf -n1 -e "${dmarker[@]}")
    sleep 2
    xdotool key --clearmodifiers k
    sleep $(shuf -i 218-463 -n1)
    $(shuf -n1 -e "${dmarker[@]}")
    sleep 2
    xdotool key --clearmodifiers k
    sleep $(shuf -i 117-346 -n1)
    xdotool mousemove 460 919 click 1
    echo -e "\033[34;5mPlay videos Stage\033[0m"
    function_loop
}

#Change VPN server and sleep.
./vpnswitcher.sh
sleep $(shuf -i 5-10 -n1)
echo -e "\033[32;5mVPN Stage\033[0m"

#Change User Agent and sleep.
    xdotool mousemove 1827 193 click 1
    sleep 2
    xdotool mousemove 1588 554 click 1
    sleep 3
    xdotool mousemove 1827 193 click 1
    sleep 2
echo -e "\033[32;5mU-A Stage\033[0m"

#Open main Channel page from Google, get to playlists and sleep.
    xdotool mousemove 631 230 click 1
    sleep 5
    xdotool mousemove 568 483 click 1
    sleep 10
    xdotool mousemove 870 716 click 1
    sleep 10
echo -e "\033[33;5mOpen Youtube Stage\033[0m"

#Select the playlist and sleep.
    $(shuf -n1 -e "${list[@]}")
    sleep $(shuf -i 32-64 -n1)
echo -e "\033[33;5mSelect playlist Stage\033[0m"
#Start playing first video?.
#Seems to autoplay

#Move across video timeline before cycling to next video.
    function_loop 
