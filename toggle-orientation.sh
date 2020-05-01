#!/bin/bash
output_screen=$1  # for instance HDMI-1
next_choice=$2  # either clock or anti

declare -A next_dir
next_dir=([clock]=1 [anti]=-1)
next_iter=${next_dir[$next_choice]}
#echo next_iter: $next_iter

declare -A str2idx
str2idx=([normal]=0 [right]=1 [inverted]=2 [left]=3)
idx2str=(normal right inverted left)
current=$(/usr/bin/xrandr --query --verbose | grep ${output_screen} | cut -d' ' -f6)
current_idx=${str2idx[$current]}
#echo "$current ($current_idx)"

next_idx=$(((current_idx+next_iter)%4))
next=${idx2str[next_idx]}
#echo "$next ($next_idx)"


echo "$current ($current_idx) => $next ($next_idx)"

/usr/bin/xrandr --output ${output_screen} --rotate ${next}
