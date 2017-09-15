#!/bin/bash
clear

while : ; do

function novamente(){
echo
echo 'Você deseja tentar novamente?'
read CONF2
if [ $CONF2 == "sim" ] || [ $CONF2 == "Sim" ] || [ $CONF2 == "SIM" ] ; then
espera
menu
fi
if [ $CONF2 == "nao" ] || [ $CONF2 == "Nao" ] || [ $CONF2 == "Não" ] || [ $CONF2 == "não" ] || [ $CONF2 == "NAO" ] || [ $CONF2 == "NÃO" ] ; then
espera
exit
fi
}

function espera(){
	clear
	echo -e "\e[31mPressione [Enter] para continuar \e[39m"
	read -s XZY
	clear
}



function invalida(){
	echo 'Opcão inválida'
	#aparece uma mensagem vermelha escrita o que está abaixo
	echo -n -e "\e[31mPressione [Enter] para continuar \e[39m"
	read -s XYZ 
	menu

}

function menu(){
clear
echo -e '\e[35m Questionário \e[32m Interessante \e[39m' #isso é para ter cor
echo
echo -e 'Você é \e[34mmenino \e[0mou \e[35mmenina? \e[0m' #cor e questão
	read MENIN	#variável
if [ $MENIN == "menino" ] || [ $MENIN == "Menino" ] || [ $MENIN == "MENINO" ] ||  [ $MENIN == "menina" ] || [ $MENIN == "Menina" ] || [ $MENIN == "MENINA"  ] ; then
clear
echo -e '\e[35m Questionário \e[32m Interessante \e[39m' #cor e questão
echo
echo 'Você gosta de Linux?'
	read CONF 	#variável
else
invalida
fi
}			#fim da função menu
menu			#chama a função menu

function menino(){	#função menino

			#esse if dá opções de multiplas condições
if [ $CONF == "sim" ] || [ $CONF == "Sim" ] || [ $CONF == "SIM" ] ; then
echo -e '\e[32mVocê é um cara legal! \e[39m'		#cor e mensagem
exit
fi

			#if com multiplas condições
if [ $CONF == "nao" ] || [ $CONF == "Nao" ] || [ $CONF == "Não" ] || [ $CONF == "não" ] || [ $CONF == "NAO" ] || [ $CONF == "NÃO" ] ; then
echo -e '\e[31mVocê tem muito o que aprender! \e[39m'
novamente
else
invalida
fi
}

function menina(){		#função menina

			#if com multiplas condições
if [ $CONF == "sim" ] || [ $CONF == "Sim" ] || [ $CONF == "SIM" ] ; then
echo -e '\e[32mVocê é uma moça legal! \e[39m'
exit
fi

			#if com multiplas condições
if [ $CONF == "nao" ] || [ $CONF == "Nao" ] || [ $CONF == "Não" ] || [ $CONF == "não" ] || [ $CONF == "NAO" ] || [ $CONF == "NÃO" ] ; then
echo -e '\e[31mUm dia você vai gosta de Linux! \e[39m'
novamente
else
invalida
fi
}

function menin(){

			#if com multiplas condições
if [ $MENIN == "menino" ] || [ $MENIN == "Menino" ] || [ $MENIN == "MENINO" ] ; then
menino
fi
			#if com multiplas condições
if [ $MENIN == "menina" ] || [ $MENIN == "Menina" ] || [ $MENIN == "MENINA"  ] ; then
menina
else
invalida
fi
}
		menin			#chama a função menin
done
