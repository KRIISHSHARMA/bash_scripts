#!/bin/bash
read -p "ENTER FILENAME : " name
read -p "REGISTER : " reg
echo "COMPILING"
sleep 2
nasm -f elf$reg $name.asm -o $name.o
if [ $reg = "32" ]; then
	ld -m elf_i386 $name.o -o $name
else
	ld -m elf_x86_64 $name.o -o $name

fi
echo "COMPLETED"
./$name
echo $?
