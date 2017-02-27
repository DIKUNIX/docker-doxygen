FROM debian:jessie

MAINTAINER Sven U. Frenzel <docker@frenzel.dk>

RUN DEBIAN_FRONTEND=noninteractive apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    doxygen \
    graphviz \
  && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/bin/bash"]
