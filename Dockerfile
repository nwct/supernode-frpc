FROM centos:7

MAINTAINER www.lu8.win<372763861@qq.com>



ADD supernode /bin/supernode
ADD supernode2 /bin/supernode2

RUN chmod 777 /bin/supernode
RUN chmod 777 /bin/supernode2

#VOLUME ["/tmp/data"] 
#WORKDIR ['/root']

EXPOSE 10082 10086


#CMD ["/bin/bash", "/run.sh"]
CMD supernode -l 10082
