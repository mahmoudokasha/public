#!/bin/bash
set -euo pipefail

run() { echo "--- $* ---"; "$@"; }

run sudo apt update
run sudo apt install -y gnome-shell-extensions gnome-shell-extension-manager ubuntu-restricted-extras dconf-editor gnome-tweaks flatpak synaptic
run sudo snap install speedtest
