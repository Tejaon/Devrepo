From centos:latest
WORKDIR /opt
RUN yum install -y java-1.8.0-openjdk
RUN useradd java
RUN mkdir java
RUN cd java
RUN mkdir docker
RUN docker build -t javadocker:tag1 .
RUN docker images
CMD ["/bin/bash"]

