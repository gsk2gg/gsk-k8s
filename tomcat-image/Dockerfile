FROM ubuntu:23.10
RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive \
    apt-get -y install \
      default-jre-headless

RUN apt-get update && apt-get install -y curl

WORKDIR /opt/
ENV TOMCAT_VERSION apache-tomcat-10.1.9.tar.gz
	  
RUN curl -O https://archive.apache.org/dist/tomcat/tomcat-10/v10.1.9/bin/${TOMCAT_VERSION}
RUN tar -xvzf ${TOMCAT_VERSION}
RUN rm ${TOMCAT_VERSION}
RUN mv apache-tomcat-10.1.9 tomcat

COPY sample.war /opt/tomcat/webapps/

CMD /opt/tomcat/bin/catalina.sh run