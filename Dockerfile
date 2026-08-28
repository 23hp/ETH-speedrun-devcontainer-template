FROM mcr.microsoft.com/devcontainers/javascript-node:24-bookworm

USER node
WORKDIR /workspace

ENV PATH="/home/node/.foundry/bin:$PATH"
RUN echo 'export PATH="/home/node/.foundry/bin:$PATH"' >> /home/node/.bashrc

RUN curl -L https://getfoundry.sh/install | bash && foundryup

# configure vscode desktop
# COPY --chown=node:node settings.json /home/node/.vscode-server/data/User/settings.json

# configure code-server
# COPY --chown=node:node settings.json /home/node/.local/share/code-server/User/settings.json
