#!/bin/bash

user_validation(){
read -p "Write your name: " username
  if id "$username" &>/dev/null; then
	  echo "User exists"
  else echo "User does not exist"
  fi
}
user_validation



