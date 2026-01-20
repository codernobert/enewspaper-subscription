# FROM 559104660845.dkr.ecr.eu-west-1.amazonaws.com/amazoncorretto:24.0.1-alpine3.21
FROM 559104660845.dkr.ecr.eu-west-1.amazonaws.com/amazoncorretto:17-alpine3.20-jdk

LABEL maintainer="STUNJE@safaricom.co.ke"

EXPOSE 8080

VOLUME /tmp

ADD target/ms-enewspaper-subscription-1.0.0.jar ms-enewspaper-subscription.jar

RUN /bin/sh -c 'touch /ms-enewspaper-subscription.jar'

ENV TZ=Africa/Nairobi

ENV NO_PROXY="*.safaricom.net,*.safaricom.co.ke,*.kubernetesuat.*"

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

ENTRYPOINT ["java","-Xmx256m", "-XX:+UseG1GC", "-Djava.security.egd=file:/dev/./urandom","-jar","/ms-enewspaper-subscription.jar"]