#!/bin/bash

run_with_break() {
  echo "--------------------------------"
  echo "$@"
  echo "--------------------------------"
  "$@"
}

# Update everything
run_with_break brew update

# Upgrade packages and casks
run_with_break brew upgrade
run_with_break brew upgrade --cask --greedy  # Also upgrades auto-updating apps

# Remove all old versions (not just 120 days old)
run_with_break brew cleanup --prune=all

# Remove downloads for all installed packages
run_with_break brew cleanup -s

# Check for issues
run_with_break brew doctor

# List outdated casks (for information)
run_with_break brew outdated --cask
