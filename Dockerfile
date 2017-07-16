FROM java:openjdk-8-jdk

MAINTAINER marioluiscitadin@gmail.com

RUN cd /opt && wget http://s3.amazonaws.com/new-mule-artifacts/mule-ee-distribution-standalone-3.8.4.tar.gz

RUN cd /opt && tar xvzf mule-ee-distribution-standalone-3.8.4.tar.gz && rm mule-ee-distribution-standalone-3.8.4.tar.gz && ln -s /opt/mule-enterprise-standalone-3.8.4 /opt/mule

# Define environment variables.
ENV MULE_HOME /opt/mule

# Define mount points.
VOLUME ["/opt/mule/logs", "/opt/mule/conf", "/opt/mule/apps", "/opt/mule/domains"]

# Define working directory.
WORKDIR /opt/mule

CMD [ "/opt/mule/bin/mule" ]

# Default http port
EXPOSE 80

ADD SearchAds /opt/mule/apps/SearchAds

RUN cd bin
RUN ./amc_setup -H 97860406-5578-4387-88b8-0482a3fa93cc---9719 test-docker
