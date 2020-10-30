FROM openjdk:16-jdk-alpine3.12
RUN apk --update add git maven && rm -rf /var/lib/apt/lists/* && rm /var/cache/apk/*
RUN git clone https://github.com/hu-mj89-lk/sample.git
WORKDIR /sample
RUN mvn clean install
CMD ["java","-jar","target/sample-0.0.1-SNAPSHOT.jar"]
