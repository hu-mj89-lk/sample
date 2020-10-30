FROM openjdk:16-jdk-alpine3.12
RUN apk --update add git maven && rm -rf /var/lib/apt/lists/* && rm /var/cache/apk/*
RUN git clone 
WORKDIR /sample
RUN mvn clean install
CMD ["java","-jar","target/sample-0.0.1-SNAPSHOT.jar"]
