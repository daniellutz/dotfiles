#!/usr/bin/env bash
# Now-playing for polybar via MPRIS (playerctl), polled once per call.
P=(playerctl -p playerctld)

status=$("${P[@]}" status 2>/dev/null)
case "$status" in
    Playing) icon=$'\uf04c'; fg="#98C379" ;;
    Paused)  icon=$'\uf04b'; fg="#ABB2BF" ;;
    *)       printf '\uf001  N/A'; exit 0 ;;
esac

meta=$("${P[@]}" metadata --format '{{artist}} - {{title}}' 2>/dev/null)
meta="${meta#- }"
meta="${meta% -}"

printf '%%{F%s}%s %s%%{F-}\n' "$fg" "$icon" "$meta"
