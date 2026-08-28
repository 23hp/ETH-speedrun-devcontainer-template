FROM mcr.microsoft.com/devcontainers/javascript-node:24-bookworm

USER node

ENV PATH="/home/node/.foundry/bin:$PATH"
RUN echo 'export PATH="/home/node/.foundry/bin:$PATH"' >> /home/node/.bashrc

RUN curl -L https://getfoundry.sh/install | bash && foundryup

RUN git config --global user.name "23hp" && \
    git config --global user.email "your.email@example.com"

# configure vscode desktop
COPY settings.json /home/node/.vscode-server/data/User/settings.json

# configure code-server
COPY settings.json /home/node/.local/share/code-server/User/settings.json
RUN code-server --install-extension JuanBlanco.solidity \
    && code-server --install-extension runtimeverification.simbolik \ 
    && code-server --install-extension esbenp.prettier-vscode