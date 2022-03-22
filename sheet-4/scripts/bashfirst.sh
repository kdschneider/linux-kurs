#!bin/bash

INPUT=$1

if [ -d "$INPUT" ]
then
  echo "Dies ist ein Ordner."
else
  if [ -f "$INPUT" ]
  then
    echo "Dies ist eine Datei."
  else
    echo "Datei oder Ordner existiert nicht!"
  fi
fi
