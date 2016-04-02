run_segment() {
	ssid=$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport -I |grep "\sSSID"|sed -e "s/[^:]*: //")
	echo ${ssid:-"no_wifi"}
}
