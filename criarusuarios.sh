#!/bin/bash
clear
SENHA="132"

for USUARIO in $(cat usuarios.txt) ; do
	useradd -s /bin/bash $USUARIO
	(echo $SENHA ; echo $SENHA) | passwd $USUARIO
	mkdir /home/$USUARIO	
	chown $USUARIO /home/$USUARIO
	chgrp $USUARIO /home/$USUARIO
done
