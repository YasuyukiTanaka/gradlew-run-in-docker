FROM ubuntu:18.04

# update packages
RUN \
  apt-get update && \
  apt-get upgrade -y && \
  apt-get install --no-install-recommends -y openjdk-8-jdk;

COPY entrypoint.sh /entrypoint.sh
RUN chmod 711 /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

