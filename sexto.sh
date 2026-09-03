#!/usr/bin/env bash


PIDFILE="/tmp/caixaverso.pid"

case "$1" in

start)
	ls $PIDFILE
	if [ $? -eq 0 ]
	then
		echo "O programa Caixa Verso já está executando"
	else 	echo "iniciando o programa CaixaVerso"
		touch /tmp/caixa.pid
	fi
;;

stop)
	if [ -f $PIDFILE ]
	then
		echo "parando o programa CaixaVerso"
		rm $PIDFILE
	else 
		echo "O programa Caixa Verso está parado."

fi

;;

*)

echo "Por favor, use o $0 {start|stop}"

;;

esac
PIDFILE="/tmp/caixa.pid"


function iniciar()

{

if [ -f $PIDFILE ]

	then

		echo "O programa CaixaVerso já está executando."

	else

		echo "Iniciando o programa CaixaVerso"

		touch $PIDFILE

	fi

}


function parar()

{

if [ -f $PIDFILE ]

	then

		echo "Parando o programa CaixaVerso"

		rm $PIDFILE

	else

		echo "O programa CaixaVerso já está parado."

	fi

}


case $1 in

start)

		iniciar

;;

stop)

		parar

;;

status)

;;

restart)

		parar

		iniciar

;;

*)

		echo "Por favor, use $0 start | stop"

;;

esac
