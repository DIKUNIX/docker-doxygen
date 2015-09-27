FROM debian:jessie
MAINTAINER Kalle R. Møller <docker-doxygen@k-moeller.dk>

RUN DEBIAN_FRONTEND=noninteractive apt-get update \
	&& DEBIAN_FRONTEND=noninteractive apt-get install -y \
		doxygen \
		graphviz \
	&& rm -rf /var/lib/apt/lists/*

VOLUME ["/data"]

WORKDIR /data

ENTRYPOINT ["doxygen"]