FROM alpine:edge
ADD supernode /supernode
EXPOSE 10082
CMD /supernode -l 10082
