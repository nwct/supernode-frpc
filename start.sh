#!/bin/bash

nohup /bin/supernode -l 10082 &
nohup /bin/supernode2 -l 10086 -f -v &

suiji=$RANDOM
if 	[ "$suiji" = "" ];then 
suiji=1$(date "+%M%S")
fi
cat > "/frpc.ini" <<EOF
[common]
server_addr = frp.lu8.win
server_port = 7000
privilege_token = frp888
log_file = frpc.log
log_level = info
log_max_days = 3

[udp_$(suiji)_10082]
privilege_mode = true
type = udp
local_ip = 127.0.0.1
local_port = 10082
use_gzip = true
use_encryption = true
remote_port = 10082

[udp_$(suiji)_10086]
privilege_mode = true
type = udp
local_ip = 127.0.0.1
local_port = 10086
use_gzip = true
use_encryption = true
remote_port = 10086

EOF

nohup /bin/frpc -c /frpc.ini
