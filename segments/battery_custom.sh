run_segment() {
  info=$(pmset -g batt | tail -n 1)
  remaining=$(echo $info | awk '{ print $2 }' | sed -e 's/.$//')
  status=$(echo $info | awk '{ print $3 }' | sed -e 's/.$//')

  if [ $status == 'discharging' ]; then
    icon='⚠️'
  elif [ $status == 'charging' ]; then
    icon='⚡️'
  elif [ $status == 'charged' ]; then
    icon='🔋'
  else
    icon=''
  fi
  echo "${icon}  ${remaining}"
}
