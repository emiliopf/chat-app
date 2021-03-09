#!/bin/bash

microservices=("users" "rooms" "frontend" "rabbitmq-auth-backend");

for i in "${microservices[@]}"
do
  path="microservices/$i";
  if [ -d "$path/src" ]; then
    echo "Micro: $i repository has been already initialized"
  else
    echo "Initializing $i repository...";
    git -C "$path" clone "https://github.com/emiliopf/chat-$i.git"
  fi;
done