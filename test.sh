#!/bin/bash

echo "test"
if [ -z $ENTORN ]
then
   echo "Entorn: $ENTORN"
else
   echo "Entorn no definit"
fi

echo "Parametres per linia: $@"