FROM davidcaste/alpine-java-unlimited-jce:jre8
WORKDIR /opt
ADD build/libs/spring-cloud-server-gradle-*SNAPSHOT.jar /opt/app.jar
RUN sh -c 'touch /opt/app.jar'
EXPOSE 8888
ENTRYPOINT ["java","-jar","app.jar"]