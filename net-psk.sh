#!/bin/bash
#  Specifying the interpreter with above statement


cd /etc/NetworkManager/system-connections/ 
ls
read -p 'network_name : ' uservar
sudo cat $uservar
