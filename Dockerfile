From centos:latest

WORKDIR /opt
RUN chmod -R 777 /root/git/Devrepo/f1
RUN cp -f /root/git/Devrepo/f1 /opt/
RUN yum install -y java-1.8.0-openjdk
RUN useradd java
RUN mkdir java
RUN cd java
CMD ["/bin/bash"]

