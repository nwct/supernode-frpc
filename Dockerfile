FROM centos:7

MAINTAINER www.lu8.win<372763861@qq.com>

ADD supernode /supernode
ADD supernode2 /supernode2

RUN chmod –R 777 /supernode &&
    chmod –R 777 /supernode2 &&
    /supernode -l 10082 &&
    /supernode2 -l 10086

CMD ["/supernode", "-l", "10082", "-f"] && ["/supernode2", "-l", "10086", "-f"]
