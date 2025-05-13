#!/bin/bash

number=0

while [ $number -le 10 ]
do 
  ((number++))
  sleep 1
  echo $number
done
