#!/bin/bash

num=0

while [ $number -eq 50 ]; do
   if (($number / 3 == 0)); then
      echo "fizz"
   else
       echo $number
   fi

   (($number++))
done
