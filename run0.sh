#!/bin/sh
cd /usr/src/kcpudp
./run.sh ./udp2raw_amd64 -s -l0.0.0.0:14488 -r 127.0.0.1:14041 --raw-mode faketcp --cipher-mode none -a -k "7758258" >udp2raw.log 2>&1 &
./server_linux_amd64 -c ./kcptun_server.json >kcptun.log 2>&1 &
echo "Kcptun+udp2raw started."