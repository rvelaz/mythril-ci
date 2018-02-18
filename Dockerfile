FROM ubuntu:xenial
LABEL mantainer="Raul Velaz"

#Install python3, pip3, mythril  and solc in one layer
RUN apt-get -y update
RUN apt-get install -y software-properties-common && \
    apt-get -y install python3 python3-pip git libssl-dev
RUN add-apt-repository ppa:ethereum/ethereum && \
    apt-get -y update && \
    apt-get install -y solc && \
    apt-get install -y && pip3 install mythril
