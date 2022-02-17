FROM debian

ENV CODE_SERVER_VERSION=4.0.1 \
    PASSWORD=password

RUN apt update && \
    apt install wget -y && \
    ARCH="$(dpkg --print-architecture)" && \
    wget https://github.com/coder/code-server/releases/download/v${CODE_SERVER_VERSION}/code-server_${CODE_SERVER_VERSION}_${ARCH}.deb && \
    dpkg -i code-server* && \
    rm code-server*

CMD code-server --bind-addr 0.0.0.0:9999 --auth password