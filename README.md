# docker-centos-jdk
___

### Description

This image adds [OpenJDK](http://openjdk.java.net/) to a base [**Centos 7**](https://hub.docker.com/r/centos/centos/) Linux distribution.

The *latest* tag of this image is build using the last available Centos Docker image and the last available Oracle JDK.
You can pull it with:

    docker pull josemyd/centos-jdk

You can also find other images based on different OpenJDK releases, using different tags in the following form:

    docker pull josemyd/centos-jdk:[openjdk-release]

For example, if you want a Centos with OpenJDK release 8 you can pull the image with:

    docker pull josemyd/centos-jdk:jdk-8

Run with Docker run:

    docker run josemyd/centos-jdk java -version

Available tags:

- OpenJDK 8 ([jdk-8](https://github.com/JosemyDuarte/docker-centos-jdk/blob/jdk-8/Dockerfile)),  [latest](https://github.com/JosemyDuarte/docker-centos-jdk/blob/master/Dockerfile)
- OpenJDK 10 ([jdk-10](https://github.com/JosemyDuarte/docker-centos-jdk/blob/jdk-10/Dockerfile)
