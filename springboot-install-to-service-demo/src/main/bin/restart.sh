#!/bin/sh -l

# -----------------------------------
# @author: liusx
# @email: liusx@plopco.com
# @description: 重新启动
# @create: 2020-05-13
# -----------------------------------

## 引入运行环境
BASE_PATH=$1
BIN_PATH=
if [ -n "$BASE_PATH" ]; then
BIN_PATH=$BASE_PATH/bin
else
BIN_PATH=./
fi
source $BIN_PATH/setenv.sh $BASE_PATH

# 停止
$BIN_PATH/shutdown.sh $BIN_PATH
sleep 2
#启动
$BIN_PATH/bin/startup.sh $BIN_PATH