#!/bin/bash

used=$(hyprctl workspaces -j | jq '.[].id' | sort -n)

i=1
for id in $used; do
    [[ $i -lt $id ]] && break
    ((i++))
done

hyprctl dispatch "hl.dsp.focus({ workspace = $i })"