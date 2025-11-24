FROM docker.io/amd64/python:3.12.3-slim-bookworm

ENV CARGO_BUILD_JOBS=2

RUN pip install --upgrade pip

RUN apt update && apt dist-upgrade -y && apt install -y jq awscli tini python3-pip
RUN pip list
