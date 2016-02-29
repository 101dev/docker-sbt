# Pull base image
FROM 1on1/docker-oracle_java8

ENV SCALA_VERSION 2.11.7
ENV SBT_VERSION 0.13.11

# Install sbt
RUN \
  apt-get update && \
  apt-get install curl && \
  curl -L -o sbt-$SBT_VERSION.deb https://dl.bintray.com/sbt/debian/sbt-$SBT_VERSION.deb && \
  dpkg -i sbt-$SBT_VERSION.deb && \
  rm sbt-$SBT_VERSION.deb && \
  apt-get install sbt

# Define working directory
WORKDIR /root
