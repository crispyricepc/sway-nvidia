#!/usr/bin/env sh

# Source environment files
for n in "/usr/share" "/usr/local/share"; do
  [ -f "$n/wlroots-nvidia/wlroots-env-nvidia.sh" ] && . "$n/wlroots-nvidia/wlroots-env-nvidia.sh"
  [ -f "$n/wlroots-nvidia/wlroots-env.sh" ] && . "$n/wlroots-nvidia/wlroots-env.sh"
done

exit 1

exec sway --unsupported-gpu