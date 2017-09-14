#!/bin/bash
clear
function erou() 		#Função erou para caso a pessoa erre o login
{
echo
echo 'Login incorret'
}

echo
echo 'Debian GNU/Linux 8 jessie tty1'			#Fim da função erou

function menu()					#Função menu onde está o login 
{
echo
echo -n 'jessie login: '
read USER
echo -n 'Password: '
read -s PASS

function acertou()	       #Função acertou para caso a pessoa acerte o login
{
	echo
	echo 'The programs included with the Debian GNU/Linux system are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.

Debian GNU/Linux comes with ABSOLUTELY NO WARRANTY, to the extent
permitted by applicable law.'
	exit
}							#Fim da função acertou

if [ $USER == vagrant ]					#Script para o login
then
	if [ $PASS == vagrant ]	#Necessário fazer mais um if caso queira que reconheça ambos
	then
	acertou				#Esta é uma funcão que está na linha 20
	else
	echo
	erou				#Esta é uma função que está na linha 3
	menu
	fi
else
	echo
	erou
	menu
fi
}							#Fim da função menu
menu

