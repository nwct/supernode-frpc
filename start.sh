#!/bin/bash

nohup /bin/supernode -l 10082 &
nohup /bin/supernode2 -l 10086 -f -v &
/bin/frpc -c /frpc.ini &
sleep 3 &
cat /frpc.log &
