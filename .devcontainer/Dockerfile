FROM mcr.microsoft.com/devcontainers/javascript-node:1-20-bookworm

ENV FOUNDRY_DIR=/usr/local/foundry
ENV PATH="${FOUNDRY_DIR}/bin:${PATH}"

USER root

RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    git \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p ${FOUNDRY_DIR} && chown -R vscode:vscode ${FOUNDRY_DIR}

USER vscode

RUN curl -L https://getfoundry.sh/install | bash && foundryup --install-dir ${FOUNDRY_DIR}/bin

WORKDIR /workspace
USER vscode
