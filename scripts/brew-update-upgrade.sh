#!/bin/bash
set -euo pipefail

run() { echo "--- $* ---"; "$@"; }

echo "=== Brew Update & Upgrade @ $(date) ==="

run brew update
run brew upgrade
run brew upgrade --cask --greedy
run brew cleanup --prune=all
run brew doctor
