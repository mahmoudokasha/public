#!/bin/bash

run_with_break() {
  echo "--------------------------------"
  echo "$@"
  echo "--------------------------------"
  "$@"
}

run_with_break sudo apt install gnome-shell-extensions
run_with_break sudo apt install gnome-shell-extension-manager
run_with_break sudo apt install ubuntu-restricted-extras
run_with_break sudo apt install dconf-editor
run_with_break sudo apt install gnome-tweaks
run_with_break sudo apt install flatpak
run_with_break sudo apt install synaptic
run_with_break sudo snap install speedtest
