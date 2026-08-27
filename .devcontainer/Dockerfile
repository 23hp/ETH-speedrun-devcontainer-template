FROM mcr.microsoft.com/devcontainers/javascript-node:24-bookworm

ENV PATH="/home/node/.foundry/bin:$PATH"
RUN echo 'export PATH="/home/node/.foundry/bin:$PATH"' >> /home/node/.bashrc

RUN curl -L https://getfoundry.sh/install | bash && foundryup

RUN git config --global user.name "23hp" && \
    git config --global user.email "your.email@example.com"
