FROM openjdk:latest

WORKDIR /myapp

COPY Sample.java ./Sample.java

RUN javac Sample.java

RUN jar cf myapp.jar Sample.class

ENTRYPOINT ["java","-jar","myapp.jar"]
