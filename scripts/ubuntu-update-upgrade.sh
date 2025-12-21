#!/bin/bash

run_with_break() {
  echo "--------------------------------"
  echo "$@"
  echo "--------------------------------"
  "$@"
}

run_with_break sudo apt update
run_with_break sudo apt upgrade -y
run_with_break sudo apt autoremove -y
run_with_break sudo apt autoclean
run_with_break sudo apt clean
run_with_break sudo snap refresh
