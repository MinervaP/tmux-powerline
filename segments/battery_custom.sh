run_segment() {
  info=$(pmset -g batt | head -n 2 | tail -n 1)
  remaining=$(echo $info | awk '{ print $2 }' | sed -e 's/.$//')
  status=$(echo $info | awk '{ print $3 }' | sed -e 's/.$//')

  if [ $status == 'discharging' ]; then
    echo "${remaining}"
  elif [ $status == 'charging' ]; then
    echo "⚡️ ${remaining}"
  elif [ $status == 'charged' ]; then
    echo "🔋 ${remaining}"
  else
    echo "${remaining}"
  fi
}
