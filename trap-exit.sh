#!/bin/bash

trap 'exit' SIGHUP SIGINT SIGTERM SIGQUIT
trap 'printf "\nTrapped, exiting cleanly!\n"; stty icanon echo echok' EXIT

read -n 1 -p "Use Ctrl+C to send SIGINT..." input
printf "...it's okay, it'll get called on exit too.\n"
