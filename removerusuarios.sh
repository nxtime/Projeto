#!/bin/bash
clear
SENHA="132"

for USUARIO in $(cat usuarios.txt) ; do
	userdel $USUARIO
	rmdir /home/$USUARIO	
done
