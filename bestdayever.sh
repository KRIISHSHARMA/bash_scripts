#!/bin/bash

read -p "HELLO YOUR NAME ?  : " NAME
sleep 2
echo "welcome $NAME"
user=$(whoami)
dir=$(pwd)
date=$(date)
sleep 2

echo "YOU ARE LOGGED IN AS $user"
echo "AND IN DIRECTORY $dir"
echo "TODAYS DATE IS $date"
