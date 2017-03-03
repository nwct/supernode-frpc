FROM centos:7

MAINTAINER Chen Gang<372763861@qq.com>



ADD supernode /bin/supernode
ADD supernode2 /bin/supernode2
ADD start.sh /start.sh

RUN chmod 777 /bin/supernode
RUN chmod 777 /bin/supernode2
RUN chmod 777 /start.sh

#VOLUME ["/tmp/data"] 
#WORKDIR ['/root']

EXPOSE 10082 10086

#ENTRYPOINT ["/start.sh"]
#CMD ["/bin/bash", "/run.sh"]
CMD ["/start.sh"]
#CMD supernode -l 10082

