FROM centos:7

MAINTAINER www.lu8.win<372763861@qq.com>

ADD supernode /supernode
ADD supernode2 /supernode2

RUN /supernode -l 10082
RUN /supernode2 -l 10086

CMD ["/supernode", "-l", "10082", "-f"] && ["/supernode2", "-l", "10086", "-f"]
