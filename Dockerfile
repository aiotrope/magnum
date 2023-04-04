# copy existing docker image
FROM amazoncorretto:8 as build

COPY .mvn .mvn                                               
COPY mvnw .                                                  
COPY pom.xml .                                               
COPY . .

RUN ./mvnw -B package      

FROM amazoncorretto:8

COPY --from=build target/docker-example-1.1.3.jar . 

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/target/docker-example-1.1.3.jar"]