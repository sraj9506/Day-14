FROM openjdk:latest

WORKDIR /myapp

COPY Sample.java /myapp/Sample.java

RUN javac Sample.java

RUN jar cf Sample.jar Sample.class

ENTRYPOINT ["java","-jar","Sample.jar",Sample]
