#!/bin/bash
set -euo pipefail

run() { echo "--- $* ---"; "$@"; }

run sudo apt update
run sudo apt upgrade -y
run sudo apt autoremove -y
run sudo apt autoclean
run sudo snap refresh
