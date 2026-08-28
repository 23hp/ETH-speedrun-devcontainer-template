FROM mcr.microsoft.com/devcontainers/javascript-node:24-bookworm

USER node

ENV PATH="/home/node/.foundry/bin:$PATH"
RUN echo 'export PATH="/home/node/.foundry/bin:$PATH"' >> /home/node/.bashrc

RUN curl -L https://getfoundry.sh/install | bash && foundryup

RUN git config --global user.name "23hp" && \
    git config --global user.email "your.email@example.com"

COPY extensions.json /home/node/.local/share/code-server/extensions/extensions.json
COPY extensions2.json /home/node/.vscode-server/extensions/extensions.json
COPY extensions3.json /home/node/.vscode/extensions.json
COPY settings.json /home/node/.local/share/code-server/User/settings.json
COPY settings.json /home/node/.vscode-server/data/Machine/settings.json
