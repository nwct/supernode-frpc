#!/bin/bash

nohup /bin/supernode -l 10082 &
/bin/supernode2 -l 10086 -f -v
