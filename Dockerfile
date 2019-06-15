FROM ubuntu:16.04

LABEL maintainer="bandaangosta <jlortiz@uc.cl>"

RUN apt-get update && \
    apt-get install -y monkeystudio && \
# Cleanup
    apt-get -y autoremove && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/* && \
    rm -rf /var/tmp/*

WORKDIR /project
VOLUME ["/project"]

ENTRYPOINT ["monkeystudio"]
