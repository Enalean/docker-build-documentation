FROM ubuntu:18.04

RUN apt-get update -qqy && \
    apt-get install -qqy python-virtualenv python-pip rpm && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    pip install -q Sphinx==1.7.9 sphinxcontrib-phpdomain

ENV VERSION 1

VOLUME [ "/sources" ]
WORKDIR /sources
CMD [ "deps/bin/run.sh" ]
