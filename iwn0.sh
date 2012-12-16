# !/bin/sh

kldload if_iwn
ifconfig wlan0 create wlandev iwn0
wpa_supplicant -B -iwlan0 -c/etc/wpa_supplicant.conf
dhclient wlan0
