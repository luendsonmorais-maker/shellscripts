#!/usr/bin/env bash
BANCO="Caixa"
SALARIO=20000

echo "Eu trabalho banco $BANCO, como agente de seguranca ganho mais de $SALARIO."
echo 'Eu trabalho banco $BANCO, como agente de seguranca ganho mais de $SALARIO.'

NUMERO1=10
NUMERO2=20
NUMERO3=30

SOMA=$(( $NUMERO1 + $NUMERO2 + $NUMERO3 ))
MULT=$(( $NUMERO1 * $NUMERO2 * $NUMERO3 ))
SUBT=$(( $NUMERO3 - $NUMERO2 - $NUMERO1 ))

echo -e "\na soma dos numeros é: $SOMA\n"
echo -e "a multiplicacao dos numeros é: $MULT\n"
echo -e "a subtracao dos numeros é: $SUBT\n"

COMANDO="ls -l"

echo -e "/nO valor da variavel comando é: $COMANDO\n"
echo -e "\nA execucao da variavel COMANDO gera o seguinte resultado:\n"
$COMANDO

SAIDACOMANDO=$( $COMANDO )
echo -e "\nA variavel SAIDACOMANDO, captura o valor gerado na execucao do comando, foi: " 
echo $SAIDACOMANDO

