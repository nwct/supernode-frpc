FROM centos:7

MAINTAINER www.lu8.win<372763861@qq.com>



ADD supernode /bin/supernode
ADD supernode2 /bin/supernode2
ADD run.sh /run.sh

RUN chmod 777 /bin/supernode
chmod 777 /bin/supernode2
chmod 777 /run.sh

#VOLUME ["/tmp/data"] 
#WORKDIR ['/root']

EXPOSE 10082 10086

CMD sh /run.sh
