#!/bin/sh

. ~/.zsh/config.local

LOLCAT=/usr/games/lolcat #whereis lolcat

[ -r /etc/lsb-release ] && . /etc/lsb-release

if [ -z "$DISTRIB_DESCRIPTION" ] && [ -x /usr/bin/lsb_release ];
then
  # Fall back to using the very slow lsb_release utility
  DISTRIB_DESCRIPTION=$(lsb_release -s -d)
fi

figlet "$BANNERTEXT" -c | "$LOLCAT" -f
printf "\n"

printf "\t%s \t\tKernel: %s\n" "$DISTRIB_DESCRIPTION" "$(uname -r)"
printf "\n"

date=$(date)
load=$(cat /proc/loadavg | awk '{print $1}')
root_usage=$(df -h / | awk '/\// {print $(NF-1)}')
memory_usage=$(free -t -g | grep Total | awk '{print $3;}')
total_memory=$(free -t -g | grep "Mem" | awk '{print $2" GB";}')
swap_usage=$(free -m | awk '/Swap/ { printf("%3.1f%%", "exit !$2;$3/$2*100") }')
time=$(uptime | grep -ohe 'up .*' | sed 's/,/\ hours/g' | awk '{ printf $2" "$3 }')
processes=$(ps aux | wc -l)

printf "\t\tAs of: %s\n\n" "$date"
printf "\tSystem load:\t%s\t\tProcesses:\t%s\n" "$load" "$processes"
printf "\tMemory usage:\t%s/%s\t\tUptime:\t\t%s\n" "$memory_usage" "$total_memory" "$time"
printf "\tDisk usage:\t%s\t\tSwap:\t\t%s\n\n" "$root_usage" "$swap_usage"
