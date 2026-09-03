#! /usr/bin/env bash

#Crie um script em shell que verifique se o valor de uma determinada variável digitada é Caixa,
#Se for, a mensagem: Você está no maior banco do País, deverá ser mostrada.
#Se não, a seguinte mensagem deve ser mostrada: não confiamos no Banco X, vem pra Cá.

#read é uma instrução para interagir com o usuário:

CX="Caixa"
CX1="CAIXA"
CX2="caixa"

read -p "Qual o nome do banco que você possui conta: " BANCO

if [ "$BANCO" == "$CX" ]
then
	echo "Você está no maior banco do pais, que é: $BANCO"

elif [ "$BANCO" == "$CX1" ]
then 
	echo "Você está no maior banco do pais, que é: $BANCO"
elif [ "$BANCO" == "$CX2" ]
then
	echo "Você está no maior banco do pais, que é: $BANCO"
else 
	echo "Não confiamos no banco $BANCO, vem pra cá."

fi
