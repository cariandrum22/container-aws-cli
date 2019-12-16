FROM python:3-alpine

ARG user
ARG uid

ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US.UTF-8

RUN pip install --upgrade pip
RUN pip install awscli && rm -rf ${HOME}/.cache

RUN adduser -D ${user:-awscli} -u ${uid:-awscli}
USER ${user:-awscli}
WORKDIR /home/${user:-awscli}
