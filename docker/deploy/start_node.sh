#! /bin/bash

launch_info="# [starting ray node]"
echo -e "\033[35m${launch_info}\033[0m"
ray start --object-manager-port=$1 --redis-address=$2:$3 --num-workers=$4
if [ $? -ne 0 ]; then
  error_info="# [started ray node fail, exit!]"
  echo -e "\033[31m${error_info}\033[0m"
  exit 1
fi
launch_info="# [started ray node successful]"
echo -e "\033[36m${launch_info}\033[0m"
sleep 4000000000
