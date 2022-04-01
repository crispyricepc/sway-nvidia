#!/usr/bin/env sh

# Source environment files
for n in "/usr/share" "/usr/local/share"; do
  [ -f "$n/sway-nvidia/wlroots-env-nvidia.sh" ] && . "$n/sway-nvidia/wlroots-env-nvidia.sh"
  [ -f "$n/sway-nvidia/wlroots-env.sh" ] && . "$n/sway-nvidia/wlroots-env.sh"
done

exec sway --unsupported-gpu