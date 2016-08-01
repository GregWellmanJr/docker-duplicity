FROM debian:stretch

RUN apt-get update \
  && apt-get install -y duplicity python-setuptools \
  && apt-get install -y \
    python-boto python-swiftclient python-pexpect openssh-client \
  && rm -rf /var/apt/lists/*

VOLUME [ "/root/.cache/duplicity" ]

ENTRYPOINT [ "duplicity" ]
CMD [ "--help" ]
