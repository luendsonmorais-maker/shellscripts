#!/usr/bin/env bash

NUMERO=10

while [ $NUMERO -gt 0 ]
do
	echo $NUMERO
	sleep 2s
	NUMERO=$(( $NUMERO - 1 ))
done


