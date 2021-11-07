FROM maven
RUN mkdir /opt/maven
WORKDIR /opt/maven
CMD ["mvn", "version"]
