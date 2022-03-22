#!bin/bash

declare -a NAMES

read -p "Welcher Name soll eingelesen werden? " NAMES[0]

i=1
while true; do
  read -p "Einen weiteren Namen einlesen? (y/n) " USER_INPUT
  if [ $USER_INPUT = y ]; then
    read -p "Welcher Name soll eingelesen werden? " NAMES[$i]
    ((i=i+1))
  else
    if [ $USER_INPUT = n ]; then
      break
    else
      printf "Fehler! Bitte nur y oder n eingeben!\n"
    fi
  fi
done

printf "Sie haben folgende Namen eingegeben:\n"
echo ${NAMES[*]}
