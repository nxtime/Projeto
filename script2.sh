#!/bin/bash
clear
function espera()
{
read -p 'Pressione [Enter] para concluir' XYZ
}
function menu()
{
echo
echo 'Debian GNU/Linux 8 jessie tty1'
echo -n 'jessie login: '
	read USER
echo -n 'Password: '
	read -s PASS
if [ $USER == vagrant ] 
		[ $PASS == vagrant ]
then
echo
echo 'Parabéns você passou!'
exit
else
echo
echo 'Você errou!'
clear
menu
fi
}
menu

