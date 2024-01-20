#!/bin/bash
echo "WAZZGOOD"
read -p "WHAT IS YOUR NAME : " name
echo "HI" $name
if [ $name = "KRIISH" ] 
then 
	echo "WELCOME ADMIN KRIISH" 
else 
	echo "WELCOME USER " $name
fi 
