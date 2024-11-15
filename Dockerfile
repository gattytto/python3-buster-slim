FROM docker.io/amd64/python:3.12.3-slim-bookworm

ENV CARGO_BUILD_JOBS=2

RUN pip install --upgrade pip

RUN pip install \
                grpcio==1.64.1 \
                boto3 \
                solana \
                base58 \
                kubernetes \
                requests \
                debugpy \
                grpcio-reflection==1.62.2 \
                protobuf \
                grpcio-health-checking==1.62.2 \
                google-api-core[grpc] \
                libcst==0.3.23 \
                googleapis-common-protos>=1.63.2 \
                proto-plus>=1.24.0 \
                quart \
                pynacl \
                hypercorn
RUN apt update && apt dist-upgrade -y && apt install -y jq             
RUN pip list
