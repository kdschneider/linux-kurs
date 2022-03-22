#!bin/bash

DIR="/usr/bin"
for i in $(find -s $DIR -type d -depth 1); do
  man -f $i
done
