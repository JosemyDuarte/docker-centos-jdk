FROM centos

RUN yum update -y \
    && yum install -y \
       java-1.8.0-openjdk \
       java-1.8.0-openjdk-devel 

RUN alternatives --install /usr/bin/java jar /usr/java/latest/bin/java 200000
RUN alternatives --install /usr/bin/javaws javaws /usr/java/latest/bin/javaws 200000
RUN alternatives --install /usr/bin/javac javac /usr/java/latest/bin/javac 200000
      
#ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk-1.8.0.181-3.b13.el7_5.x86_64

CMD ["/bin/bash"]
