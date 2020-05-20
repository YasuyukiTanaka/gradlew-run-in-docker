FROM ubuntu:16.04

# update packages
RUN \
  apt-get update && \
  apt-get upgrade -y && \
  apt-get install --no-install-recommends -y openjdk-8;

COPY entrypoint.sh /entrypoint.sh
RUN chmod 711 /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

