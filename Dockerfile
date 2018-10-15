FROM centos:7

ENV JAVA_VER  10
ENV JAVA_FULL_VER 10.0.2
ENV JAVA_HOME /opt/jdk-$JAVA_FULL_VER/

# Install Packages
RUN yum update -y \
    && yum install -y wget unzip \
    && yum clean all \
    && rm -rf /var/cache/yum

WORKDIR /opt

RUN wget https://download.java.net/java/GA/jdk${JAVA_VER}/${JAVA_FULL_VER}/19aef61b38124481863b1413dce1855f/13/openjdk-${JAVA_FULL_VER}_linux-x64_bin.tar.gz -O /opt/jdk.tar.gz \
    && tar -xvf jdk.tar.gz \
    && rm jdk.tar.gz \
    && alternatives --install /usr/bin/java java /opt/jdk-$JAVA_FULL_VER/bin/java 2

CMD ["/bin/bash"]
 