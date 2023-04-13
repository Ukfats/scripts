#VPN SWITCHER
#Connects to VPN server from the listed locations randomly
#Add/edit server locations in "randomvpn", alternate between on-demand or timed by commenting out the unwanted mode.

randomvpn=( "nordvpn connect us" "nordvpn connect ca" "nordvpn connect uk" )

#Upon calling vpnswitcher.sh
  $(shuf -n1 -e "${randomvpn[@]}")
  sleep 15

#Script keeps running and waits 1 hour between random server connects from the array.
  #$(shuf -n1 -e "${randomvpn[@]}")
  #sleep 3600
  #./vpnswitcher.sh
