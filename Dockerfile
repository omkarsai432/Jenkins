FROM centos
RUN mkdir /opt/maven
WORKDIR /opt/maven
RUN curl -O https://dlcdn.apache.org/maven/maven-3/3.8.3/binaries/apache-maven-3.8.3-bin.tar.gz
RUN tar xvfz  apache*.tar.gz
RUN mv apache-maven-3.8.3/* /opt/maven/
ENV MAVEN_HOME /usr/share/maven
ENV MAVEN_CONFIG "$USER_HOME_DIR/.m2"
RUN yum install -y java
RUN java -version
CMD ["mvn", "--version"]
