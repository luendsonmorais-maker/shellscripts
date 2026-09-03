#!/usr/bin/env bash

 

SENHA_CORRETA="Caixa@#2026"



TENTATIVA=1

MAXIMO=3

 
while [ $TENTATIVA -le $MAXIMO ]

do

echo "digite a senha para logar, Tentativa $TENTATIVA de $MAXIMO"

read -p "Digite a senha: " SENHA

 
if [ "$SENHA" = "$SENHA_CORRETA" ]

then

echo "Acesso autorizado! Bem-vindo ao sistema."

exit 0

else

RESTANTES=$(( MAXIMO - TENTATIVA ))

 
if [ $RESTANTES -gt 0 ]

then

echo "Senha incorreta. Você ainda tem $RESTANTES tentativa(s)."

fi

 
TENTATIVA=$(( TENTATIVA + 1 ))

fi

done


echo "Acesso Bloqueado. Número máximo de tentativas excedido."

exit 1



