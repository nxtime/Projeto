#!/bin/bash

espera(){
dialog --infobox '\nAguarde alguns segundos...' 5 0
sleep 1 
}

invalida(){
dialog --msgbox '\nOpção inválida' 5 0
}

enunciado(){
	RESP=$(dialog --stdout --title "Questionário de $MATERIA Lvl$LVL" --inputbox "Pergunta $PERGUNTA: Quanto é $SITUACAO?" 0 0)
}
ultimoresultado(){
	[ $TOTAL != "1" ] && dialog --title "Resultado" --msgbox "A quantidade de acertos no seu ultimo questionário foi: 

$TOTAL questões!" 8 41; espera; $opcao || dialog --title "Resultado" --msgbox "A quantidade de acertos no seu ultimo questionario foi:

$TOTAL questão" 8 41; espera; $opcao
}

resultado(){
	TOTAL=$(($RESP1 + $RESP2 + $RESP3 + $RESP4 + $RESP5))
	if [ $TOTAL == "3" ] || [ $TOTAL == "4" ] || [ $TOTAL == "5" ] ; then
		dialog --stdout --title "Questionário de $MATERIA" --msgbox "Resultado: 

Parabéns, você acertou $TOTAL questões!" 8 30
		espera
		questionariomat
	fi
	if [ $TOTAL == "1" ] ; then
		dialog --stdout --title "Questionário de $MATERIA" --msgbox "Resultado: 

Que pena, você acertou apenas 1 questão!" 8 30
		espera
		questionariomat
	else
		dialog --stdout --title "Questionário de $MATERIA" --msgbox "Resultado: 

Que pena, você acertou apenas $TOTAL questões!" 8 30
		espera
		questionariomat
	fi
}

questionario135(){
SITUACAO=130*8
PERGUNTA=5
enunciado
if [ $RESP == $(($SITUACAO)) ] ; then
	dialog --stdout --msgbox "\nParabéns você acertou!" 0 0	
	RESP5=1
	espera
	resultado
else
	dialog --stdout --msgbox "\nQue pena você errou a resposta era $(($SITUACAO))!" 0 0
	espera
	resultado
fi
}

questionario134(){
SITUACAO=(290-120)/2
PERGUNTA=4
enunciado
if [ $RESP == $(($SITUACAO)) ] ; then
	dialog --stdout --msgbox "\nParabéns você acertou!" 0 0	
	RESP4=1
	espera
	questionario135
else
	dialog --stdout --msgbox "\nQue pena você errou a resposta era $(($SITUACAO))!" 0 0
	espera
	questionario135
fi
}

questionario133(){
SITUACAO=(19-12)*15
PERGUNTA=3
enunciado
if [ $RESP == $(($SITUACAO)) ] ; then
	dialog --stdout --msgbox "\nParabéns você acertou!" 0 0	
	RESP3=1
	espera
	questionario134
else
	dialog --stdout --msgbox "\nQue pena você errou a resposta era $(($SITUACAO))!" 0 0
	espera
	questionario134
fi
}

questionario132(){
SITUACAO=125*5+7
PERGUNTA=2
enunciado
if [ $RESP == $(($SITUACAO)) ] ; then
	dialog --stdout --msgbox "\nParabéns você acertou!" 0 0	
	RESP2=1
	espera
	questionario133
else
	dialog --stdout --msgbox "\nQue pena você errou a resposta era $(($SITUACAO))!" 0 0
	espera
	questionario133
fi
}

questionario13(){
respostas
MATERIA=Matemática
LVL=3
SITUACAO=(15+4)*3
PERGUNTA=1
enunciado
if [ $RESP == $(($SITUACAO)) ] ; then
	dialog --stdout --msgbox "\nParabéns você acertou!" 0 0	
	RESP1=1
	espera
	questionario132
else
	dialog --stdout --msgbox "\nQue pena você errou a resposta era $(($SITUACAO))!" 0 0
	espera
	questionario132
fi
}

questionario125(){
SITUACAO=125*5
PERGUNTA=5
enunciado
if [ $RESP == $(($SITUACAO)) ] ; then
	dialog --stdout --msgbox "\nParabéns você acertou!" 0 0	
	RESP5=1
	espera
	resultado
else
	dialog --stdout --msgbox "\nQue pena você errou a resposta era $(($SITUACAO))!" 0 0
	espera
	resultado
fi
}


questionario124(){
SITUACAO=400/5
PERGUNTA=4
enunciado
if [ $RESP == $(($SITUACAO)) ] ; then
	dialog --stdout --msgbox "\nParabéns você acertou!" 0 0	
	RESP4=1
	espera
	questionario125
else
	dialog --stdout --msgbox "\nQue pena você errou a resposta era $(($SITUACAO))!" 0 0
	espera
	questionario125
fi
}

questionario123(){
SITUACAO=37*5
PERGUNTA=3
enunciado
if [ $RESP == $(($SITUACAO)) ] ; then
	dialog --stdout --msgbox "\nParabéns você acertou!" 0 0	
	RESP3=1
	espera
	questionario124
else
	dialog --stdout --msgbox "\nQue pena você errou a resposta era $(($SITUACAO))!" 0 0
	espera
	questionario124
fi
}

questionario122(){
SITUACAO=72/3
PERGUNTA=2
enunciado
if [ $RESP == $(($SITUACAO)) ] ; then
	dialog --stdout --msgbox "\nParabéns você acertou!" 0 0	
	RESP2=1
	espera
	questionario123
else
	dialog --stdout --msgbox "\nQue pena você errou a resposta era $(($SITUACAO))!" 0 0
	espera
	questionario123
fi
}

questionario12(){
respostas
MATERIA=Matemática
LVL=2
SITUACAO=15*3
PERGUNTA=1
enunciado
if [ $RESP == $(($SITUACAO)) ] ; then
	dialog --stdout --msgbox "\nParabéns você acertou!" 0 0	
	RESP1=1
	espera
	questionario122
else
	dialog --stdout --msgbox "\nQue pena você errou a resposta era $(($SITUACAO))!" 0 0
	espera
	questionario122
fi
}

questionario115(){
SITUACAO=56-27
PERGUNTA=5
enunciado
if [ $RESP == $(($SITUACAO)) ] ; then
	dialog --stdout --msgbox "\nParabéns você acertou!" 0 0	
	RESP5=1
	espera
	resultado
else
	dialog --stdout --msgbox "\nQue pena você errou a resposta era $(($SITUACAO))!" 0 0
	espera
	resultado
fi
}

questionario114(){
SITUACAO=27+14
PERGUNTA=4
enunciado
if [ $RESP == $(($SITUACAO)) ] ; then
	dialog --stdout --msgbox "\nParabéns você acertou!" 0 0	
	RESP4=1
	espera
	questionario115
else
	dialog --stdout --msgbox "\nQue pena você errou a resposta era $(($SITUACAO))!" 0 0
	espera
	questionario115
fi
}

questionario113(){
SITUACAO=42-37
PERGUNTA=3
enunciado
if [ $RESP == $(($SITUACAO)) ] ; then
	dialog --stdout --msgbox "\nParabéns você acertou!" 0 0	
	RESP3=1
	espera
	questionario114
else
	dialog --stdout --msgbox "\nQue pena você errou a resposta era $(($SITUACAO))!" 0 0
	espera
	questionario114
fi
}

questionario112(){
SITUACAO=27-14
PERGUNTA=2
enunciado
if [ $RESP == $(($SITUACAO)) ] ; then
	dialog --stdout --msgbox "\nParabéns você acertou!" 0 0	
	RESP2=1
	espera
	questionario113
else
	dialog --stdout --msgbox "\nQue pena você errou a resposta era $(($SITUACAO))!" 0 0
	espera
	questionario113
fi
}

questionario11(){
respostas
MATERIA=Matemática
LVL=1
SITUACAO=37+42
PERGUNTA=1
enunciado
if [ $RESP == $(($SITUACAO)) ] ; then
	dialog --stdout --msgbox "\nParabéns você acertou!" 0 0	
	RESP1=1
	espera
	questionario112
else
	dialog --stdout --msgbox "\nQue pena você errou a resposta era $(($SITUACAO))!" 0 0
	espera
	questionario112
fi
}

respostas(){ RESP1=0; RESP2=0; RESP3=0; RESP4=0; RESP5=0; }

questionariomat(){
opcao=questionariomat
OPCAO=$(dialog	--stdout			\
	--title 'Questionários de Matemática'	\
	--menu 'Escolha uma das opções abaixo: ' 0 0 0\
	1 'Questionário Lvl 1'		\
	2 'Questionário Lvl 2'		\
	3 'Questionário Lvl 3'		\
	4 'Resultado do último questionário'	\
	5 'Voltar')
case $OPCAO in
	1) questionario11 ;;
	2) questionario12 ;;
	3) questionario13 ;;
	4) ultimoresultado ;;
	5) questionario ;;
	*) inválida ; questionariomat ;
esac
}

sair(){
dialog --stdout --yesno "\nTem certeza que deseja sair?" 0 0
if [ $? == 0 ]; then
	espera
	clear
	exit 0
fi
if [ $? == 1 ]; then
	espera
	menu	
else
	invalida
	sair
fi
}

indisponivel(){
	dialog --msgbox 'Desculpe no momento está indisponível' 7 41
}
instalacao(){
	if [ $ERRO != 0 ]; then
		dialog --stdout --title "WARNING!!!" --msgbox "\nAntes de proseguir por favor verifique se tem acesso root e/ou a internet." 0 0
		dialog --stdout --title "ERRO" --yesno "\nDetectei que você não tem o programa, deseja instalá-lo?" 0 0
		if [ $? == 0 ]; then
			$(apt-get install $PROGRAMA)
			espera
			dialog --stdout --title "$PROGRAMA" --yesno "O $PROGRAMA foi instalado, deseja executálo?" 0 0
			if [ $? == 0 ]; then
				$PROGRAMA
				espera
				editortexto
			else
				espera
				editortexto
			fi
		else
			espera
			editortexto
		fi
	else
		espera
		editortexto
	fi
}
e5(){
PROGRAMA=geany
$PROGRAMA
ERRO=$?
[ $ERRO != 0 ] && instalacao || editortexto
}
e4(){
PROGRAMA=emacs
$PROGRAMA
ERRO=$?
[ $ERRO != 0 ] && instalacao || editortexto
}
e3(){
PROGRAMA=joe
$PROGRAMA
ERRO=$?
[ $ERRO != 0 ] && instalacao || editortexto
}
e2(){
PROGRAMA=nano
$PROGRAMA
ERRO=$?
[ $ERRO != 0 ] && instalacao || editortexto
}
e1(){
PROGRAMA=vim
$PROGRAMA
ERRO=$?
[ $ERRO != 0 ] && instalacao || editortexto
}
editortexto(){
OPCAO2=$( dialog --stdout --title 'Editores de texto v1.0' --menu "Selecione um dos editores abaixo:" 0 0 0 \
1 'Vim' \
2 'Nano' \
3 'Joe' \
4 'Emacs' \
5 'Geany' \
6 'Voltar')

case $OPCAO2 in
	1) e1 ;;
	2) e2 ;;
	3) e3 ;;
	4) e4 ;;
	5) e5 ;;
	6) menu ;;
	*) invalida ; editor de texto ;;
esac
}
calculadora(){
VERSAO="Calculadora v1.0"
RESPBC=0
FUNCAO=$(dialog --stdout --title "$VERSAO" \
	--inputbox '\nEscreva a expressão que deseja para conseguir o resultado: ' 0 0)
RESPBC=$(echo $FUNCAO | bc -l)
while true ; do
dialog --stdout --title "$VERSAO" \
	--yesno "\nA resposta é $RESPBC, deseja continuar a conta?" 0 0
if [ $? == 0 ]; then
	RESP=$(dialog --stdout --title "$VERSAO" --inputbox "$RESPBC" 0 0)
	RESPBC=$(echo $RESPBC$RESP | bc -l) 
else
	menu
fi
done
}
questionario(){
clear
OPCAO=$( dialog	--stdout --title 'Questionário v1.0' --menu "Escolha um dos questionários abaixo: " 0 0 0 \
1 'Questionários de Matemática' \
2 'Questionário de Português' \
3 'Questionário de Ciências' \
4 'Questionário de Inglês' \
5 'Voltar')

case $OPCAO in
	1) questionariomat ;;
	2) indisponivel ; espera ; questionario ;;
	3) indisponivel ; espera ; questionario ;;
	4) indisponivel ; espera ; questionario ;;
	5) menu ;;
	*) invalida ; questionario ;;
esac
}
menu(){
MENU=$( dialog --stdout --title 'Programa Restart v1.1' --menu '\nEscolha uma das opções abaixo: ' 0 0 0 \
1 'Questionários' \
2 'Caculadora' \
3 'Editores de texto' \
4 'Usuários' \
5 'Jogos' \
6 'Hora/Data' \
7 'Sair')
case $MENU in
	1) questionario ;;
	2) calculadora ;;
	3) editortexto ;;
	4) indisponivel ; usuarios ; menu ;;
	5) indisponivel ; jogos ; menu ;;
	6) indisponivel ; horadata ; menu ;;
	7) sair ;;
	*) invalida ; menu ;;
esac
}
menu
