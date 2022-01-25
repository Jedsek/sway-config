#!/usr/bin/env bash

yes " " | yay -S waybar

mkdir -p ~/.config/waybar/
cp ~/sway-config/window-managers/sway/waybar/style.css ~/.config/waybar/

# ~/.config/waybar/config
WLAN=( `ip addr | grep wl -m 1 | awk '{print $2}'` )
WLAN=${WLAN%?}
cat > ~/.config/waybar/config << EOF
{
    "layer": "top",
    "position": "top",
    "modules-left": ["sway/workspaces", "sway/mode"],
    "modules-center": ["sway/window"],
    "modules-right": ["battery", "backlight", "keyboard-state", "network", "pulseaudio", "clock"],
    "sway/window": {
        "max-length": 50,
    },
    "battery": {
        "format": "{capacity}% {icon}",
        "format-icons": ["", "", "", "", ""]
    },
    "backlight": {
        "device": "intel_backlight",
        "format": "{percent}% {icon}",
        "format-icons": ["", ""]
    },
    "keyboard-state": {
        "numlock": true,
        "capslock": true,
        "format": "{name}{icon}",
        "format-icons": {
            "locked": "",
            "unlocked": ""
        }
    },
    "network": {
        "interface": "$WLAN",
        "format": "{ifname}",
        "format-wifi": "{essid} ({signalStrength}%) ",
        "format-ethernet": "{ipaddr}/{cidr} ",
        "format-disconnected": "", //An empty format will hide the module.
        "tooltip-format": "{ifname} via {gwaddr} ",
        "tooltip-format-wifi": "{essid} ({signalStrength}%) ",
        "tooltip-format-ethernet": "{ifname} ",
        "tooltip-format-disconnected": "Disconnected",
        "max-length": 50
    },
    "pulseaudio": {
        "format": "{icon} {volume}%",
        "format-muted": "静音",
        "format-icons": {
            "headphones": "",
            "default": ["", ""]
        },
    },
    "clock": {
        "format-alt": "{:%a, %d. %b  %H:%M}"
    },
}
EOF
