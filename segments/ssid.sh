run_segment() {
	echo $(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport -I |grep "\sSSID"|sed -e "s/[^:]*: //")
}
