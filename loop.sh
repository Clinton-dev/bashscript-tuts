#!/bin/bash

echo "Compress files example"
for file in logfiles/*.log
do
   tar -czvf $file.tar.gz $file
done


echo "Ping Test servers"
for host in 173.212.217.73 139.59.162.201
do 
  ping -c 1 "$host" &> /dev/null
  if [ $? -eq 0 ] 
  then
      echo "$host is up"
  else
      echo "$host is down"
  fi
done









# basic example

#for current_number in {1..10}
#do
#  echo $current_number
#  sleep 1
#done

#echo 'This is outside the for loop.'
