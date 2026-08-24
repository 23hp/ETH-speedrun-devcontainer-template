FROM mcr.microsoft.com/devcontainers/javascript-node:1-20-bookworm

USER root

RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    git \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

RUN useradd -m -s /bin/bash -G sudo coder

RUN echo "PS1='🐳 \[\033[1;34m\]\W\[\033[0;35m\] \[\033[1;36m\]# \[\033[0m\]'" > /home/coder/.bashrc && \
    chown coder:coder /home/coder/.bashrc

USER coder

WORKDIR /workspace

ENV PATH="/home/coder/.foundry/bin:${PATH}"

RUN curl -L https://getfoundry.sh/install | bash && foundryup

