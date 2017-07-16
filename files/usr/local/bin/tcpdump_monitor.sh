#!/bin/sh

while [ 1 ]
do
  if [ -f $1 ]
  then
    kill $2
    exit
  fi
  sleep 30
done
