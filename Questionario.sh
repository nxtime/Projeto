#!/bin/bash

espera(){
echo
read -s -p "Pressione [Enter] para continuar..."
sleep 1
echo
}

invalida(){
echo
read -s -p "Opção inválida

Pressione [Enter] para continuar..."
sleep 1 
echo
}

enunciado(){
clear
echo 'Questionário de '$MATERIA 'Lvl '$LVL
echo
echo 'Pergunta '$PERGUNTA':'
echo
}

perguntamat(){
echo "Quanto é "$SITUACAO"?"
read RESP
}

ultimoresultado(){
	echo
	echo 'A quantidade de acertos no seu ultimo questionário foi: '
	echo
	[ $TOTAL == "1" ] && echo '1 questão!' ; espera ; $opcao || echo $TOTAL 'Questões!' ; espera ; $opcao

}

resultado(){
	TOTAL=$(($RESP1 + $RESP2 + $RESP3 + $RESP4 + $RESP5))
	clear
	echo 'Resultado:'
	echo
	if [ $TOTAL == "3" ] || [ $TOTAL == "4" ] || [ $TOTAL == "5" ] ; then
		echo "Parabéns, você acertou "$TOTAL "questões!"
		espera
		questionariomat
	fi
	if [ $TOTAL == "1" ] ; then
	        echo "Que pena, você acertou apenas 1 questão!"	
		espera
		questionariomat
	else
		echo "Que pena, você acertou apenas "$TOTAL "questões!"
		espera
		questionariomat
	fi
}

questionario135(){
SITUACAO=130*8/2
PERGUNTA=5
enunciado
perguntamat
if [ $RESP == $(($SITUACAO)) ] ; then
	echo 
	echo 'Parabéns, você acertou!'
	RESP5=1
	espera
	resultado
else
	echo
	echo 'Que pena você errou, a resposta era '$(($SITUACAO))'!'
	espera
	resultado
fi
}

questionario134(){
SITUACAO=(290-120)/2
PERGUNTA=4
enunciado
perguntamat
if [ $RESP == $(($SITUACAO)) ] ; then
	echo 
	echo 'Parabéns, você acertou!'
	RESP4=1
	espera
	questionario135
else
	echo
	echo 'Que pena você errou, a resposta era '$(($SITUACAO))'!'
	espera
	questionario135
fi
}

questionario133(){
SITUACAO=(19-12)*15
PERGUNTA=3
enunciado
perguntamat
if [ $RESP == $(($SITUACAO)) ] ; then
	echo 
	echo 'Parabéns, você acertou!'
	RESP3=1
	espera
	questionario134
else
	echo
	echo 'Que pena você errou, a resposta era '$(($SITUACAO))'!'
	espera
	questionario134
fi
}

questionario132(){
SITUACAO=125*5+7
PERGUNTA=2
enunciado
perguntamat
if [ $RESP == $(($SITUACAO)) ] ; then
	echo 
	echo 'Parabéns, você acertou!'
	RESP2=1
	espera
	questionario133
else
	echo
	echo 'Que pena você errou, a resposta era '$(($SITUACAO))'!'
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
perguntamat
if [ $RESP == $(($SITUACAO)) ] ; then
	echo 
	echo 'Parabéns, você acertou!'
	RESP1=1
	espera
	questionario132
else
	echo
	echo 'Que pena você errou, a resposta era '$(($SITUACAO))'!'
	espera
	questionario132
fi
}

questionario125(){
SITUACAO=125*5
PERGUNTA=5
enunciado
perguntamat
if [ $RESP == $(($SITUACAO)) ] ; then
	echo 
	echo 'Parabéns, você acertou!'
	RESP2=1
	espera
	resultado
else
	echo
	echo 'Que pena você errou, a resposta era '$(($SITUACAO))'!'
	espera
	resultado
fi
}


questionario124(){
SITUACAO=400/5
PERGUNTA=4
enunciado
perguntamat
if [ $RESP == $(($SITUACAO)) ] ; then
	echo 
	echo 'Parabéns, você acertou!'
	RESP4=1
	espera
	questionario122
else
	echo
	echo 'Que pena você errou, a resposta era '$(($SITUACAO))'!'
	espera
	questionario125
fi
}

questionario123(){
SITUACAO=37*5
PERGUNTA=3
enunciado
perguntamat
if [ $RESP == $(($SITUACAO)) ] ; then
	echo 
	echo 'Parabéns, você acertou!'
	RESP3=1
	espera
	questionario124
else
	echo
	echo 'Que pena você errou, a resposta era '$(($SITUACAO))'!'
	espera
	questionario124
fi
}

questionario122(){
SITUACAO=72/3
PERGUNTA=2
enunciado
perguntamat
if [ $RESP == $(($SITUACAO)) ] ; then
	echo 
	echo 'Parabéns, você acertou!'
	RESP2=1
	espera
	questionario123
else
	echo
	echo 'Que pena você errou, a resposta era '$(($SITUACAO))'!'
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
perguntamat
if [ $RESP == $(($SITUACAO)) ] ; then
	echo 
	echo 'Parabéns, você acertou!'
	RESP1=1
	espera
	questionario122
else
	echo
	echo 'Que pena você errou, a resposta era '$(($SITUACAO))'!'
	espera
	questionario122
fi
}

questionario115(){
SITUACAO=56-27
PERGUNTA=5
enunciado
perguntamat
if [ $RESP == $(($SITUACAO)) ] ; then
	echo 
	echo 'Parabéns, você acertou!'
	RESP5=1
	espera
	resultado
else
	echo
	echo 'Que pena você errou, a resposta era '$(($SITUACAO))'!'
	espera
	resultado
fi
}

questionario114(){
SITUACAO=27+14
PERGUNTA=4
enunciado
perguntamat
if [ $RESP == $(($SITUACAO)) ] ; then
	echo 
	echo 'Parabéns, você acertou!'
	RESP4=1
	espera
	questionario115
else
	echo
	echo 'Que pena você errou, a resposta era '$(($SITUACAO))'!'
	espera
	questionario115
fi
}

questionario113(){
SITUACAO=42-37
PERGUNTA=3
enunciado
perguntamat
if [ $RESP == $(($SITUACAO)) ] ; then
	echo 
	echo 'Parabéns, você acertou!'
	RESP3=1
	espera
	questionario114
else
	echo
	echo 'Que pena você errou, a resposta era '$(($SITUACAO))'!'
	espera
	questionario114
fi
}

questionario112(){
SITUACAO=27-14
PERGUNTA=2
enunciado
perguntamat
if [ $RESP == $(($SITUACAO)) ] ; then
	echo 
	echo 'Parabéns, você acertou!'
	RESP2=1
	espera
	questionario113
else
	echo
	echo 'Que pena você errou, a resposta era '$(($SITUACAO))'!'
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
perguntamat
if [ $RESP == $(($SITUACAO)) ] ; then
	echo 
	echo 'Parabéns, você acertou!'
	RESP1=1
	espera
	questionario112
else
	echo
	echo 'Que pena você errou, a resposta era '$(($SITUACAO))'!'
	espera
	questionario112
fi
}

respostas(){
RESP1=0
RESP2=0
RESP3=0
RESP4=0
RESP5=0
}

questionariomat(){
opcao=questionariomat
clear
echo 'Questionários de Matemática'
echo
echo '1) Questionário Lvl 1'
echo '2) Questionário Lvl 2'
echo '3) Questionário Lvl 3'
echo '4) Resultado do último questionário'
echo '5) Voltar'
echo
echo -n 'Escolha uma das opções acima: '
read OPCAO
case $OPCAO in
	1) sleep 1 ; questionario11 ;;
	2) sleep 1 ; questionario12 ;;
	3) sleep 1 ; questionario13 ;;
	4) sleep 1 ; ultimoresultado ;;
	5) sleep 1 ; questionario ;;
	*) inválida ; questionariomat ;
esac
}

sair(){
echo
echo 'Tem certeza que deseja sair? [S/n]'
read RESP
if [ $RESP == "s" ] || [ $RESP == "S" ] ; then  espera ; clear ; exit 0 ;
fi
if [ $RESP == "n" ] || [ $RESP == "N" ] ; then 
sleep 1 ; questionario
else
invalida ; sair
fi
}

indisponivel(){
	echo
	echo 'Desculpe no momento está indisponível'
}

questionario(){
clear
echo 'Questionário v1.0'
echo
echo 'Menu'
echo
echo '1) Questionários de Matemática'
echo '2) Questionários de Português'
echo '3) Questionários de Ciências '
echo '4) Questionários de Inglês'
echo '5) Sair'
echo
echo -n 'Escolha uma das opções acima: '
read OPCAO
case $OPCAO in
	1) sleep 1 ; questionariomat ;;
	2) sleep 1 ; indisponivel ; espera ; questionario ;;
	3) sleep 1 ; indisponivel ; espera ; questionario ;;
	4) sleep 1 ; indisponivel ; espera ; questionario ;;
	5) sair ;;
	*) invalida ; questionario ;;
esac
}
questionario
