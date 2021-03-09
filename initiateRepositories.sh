#!/bin/bash

microservices=("users" "rooms" "frontend" "rabbitmq-auth-backend");

for i in "${microservices[@]}"
do
  path="microservices/$i";
  if [ -d "$path/src" ]; then
    echo "Micro: $i repository has been already initialized"
  else
    echo "Initializing $i repository...";
    git -C "$path" init 
    git -C "$path" remote add origin "https://github.com/emiliopf/chat-$i.git"
    git -C "$path" pull origin master
  fi;
done