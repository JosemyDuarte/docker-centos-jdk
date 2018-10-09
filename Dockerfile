FROM centos:6.10

RUN yum update -y \
    && yum install -y \
       java-1.8.0-openjdk \
       java-1.8.0-openjdk-devel 
       
ENV JAVA_HOME /etc/alternatives/jre

CMD ["/bin/bash"]
