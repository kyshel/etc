#!/bin/bash

# target: forward s5 netflow
# credit: kyshel @ 20200517

# usage: 
# 1. >>> . FILENAME on <<< 
# 2. >>> . FILENAME off <<<

# precondition:
# 1. >>> yum -y install privoxy <<<
# 2. >>> cp /etc/privoxy/config /etc/privoxy/config_bak <<<
# 3. vi above, enable this: >>> forward-socks5t / 127.0.0.1:1080 . <<<
# 4. if OS is ubuntu, cahnge systemctl to service




if [ "$1" == "on" ]; then
    systemctl  start privoxy
    export http_proxy=http://127.0.0.1:8118
    export https_proxy=http://127.0.0.1:8118
elif [ "$1" == "off" ]; then
    systemctl  stop   privoxy
    export http_proxy=""
    export https_proxy=""
elif [ "$1" == "status" ]; then
    systemctl  status privoxy
elif [ "$1" == "log" ]; then
    echo 'parameter not set'
elif [ "$1" == "test" ]; then
    echo 'parameter not set'
else
    echo 'Please input argument: on,off,status'
fi
echo 'Now your ip is: '
curl ipinfo.io
echo ''
