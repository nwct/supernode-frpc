#!/bin/bash

nohup /bin/supernode -l 10082 &
nohup /bin/supernode2 -l 10086 -f -v &
nohup /bin/frpc -c /frpc.ini &
cat /frpc.log &
