#!/bin/bash

wal_colors="$HOME/.cache/wal/colors.json"

background=$(jq -r '.special.background' "$wal_colors" | sed 's/^#//')
foreground=$(jq -r '.special.foreground' "$wal_colors" | sed 's/^#//')
colors=($(jq -r '.colors | to_entries | map(.value) | .[]' "$wal_colors" | sed 's/^#//'))

cat << EOF > ~/.cache/wal/colors-hyprland.conf
\$background = rgb(${background})
\$foreground = rgb(${foreground})
\$color0 = rgb(${colors[0]})
\$color1 = rgb(${colors[1]})
\$color2 = rgb(${colors[2]})
\$color3 = rgb(${colors[3]})
\$color4 = rgb(${colors[4]})
\$color5 = rgb(${colors[5]})
\$color6 = rgb(${colors[6]})
\$color7 = rgb(${colors[7]})
\$color8 = rgb(${colors[8]})
\$color9 = rgb(${colors[9]})
\$color10 = rgb(${colors[10]})
\$color11 = rgb(${colors[11]})
\$color12 = rgb(${colors[12]})
\$color13 = rgb(${colors[13]})
\$color14 = rgb(${colors[14]})
\$color15 = rgb(${colors[15]})
EOF
