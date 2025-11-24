FROM docker.io/amd64/python:3.12.3-slim-bookworm

ENV CARGO_BUILD_JOBS=2

RUN pip install --upgrade pip

RUN pip install \
                grpcio==1.67.1 \
                boto3 \
                solana \
                base58 \
                kubernetes \
                requests \
                debugpy \
                grpcio-reflection==1.67.1 \
                protobuf==5.28.3 \
                grpcio-health-checking==1.67.1 \
                google-api-core[grpc]==2.22.0 \
                libcst==0.3.23 \
                googleapis-common-protos>=1.65.0 \
                proto-plus>=1.25.0 \
                quart \
                pynacl \
                hypercorn
RUN apt update && apt dist-upgrade -y && apt install -y jq awscli tini python3-pip
RUN pip list
