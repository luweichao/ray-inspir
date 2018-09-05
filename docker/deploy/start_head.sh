#! /bin/bash

launch_info="# [starting ray head]"
echo -e "\033[35m${launch_info}\033[0m"
ray start --head --object-manager-port=$1 --redis-port=$2 --num-workers=$3
if [ $? -ne 0 ]; then
  error_info="# [started ray head fail, exit!]"
  echo -e "\033[31m${error_info}\033[0m"
  exit 1
fi
launch_info="# [started ray head successful]"
echo -e "\033[36m${launch_info}\033[0m"
tensorboard --logdir=/root/logs/ --port=$4
