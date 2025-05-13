#!/bin/bash

read -p "Enter password: " password

if (( $password == "pass123"));then
  echo "Access Granted"
else 
  echo "Access Denied"
fi


