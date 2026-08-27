FROM mcr.microsoft.com/devcontainers/javascript-node:24-bookworm

RUN useradd -m -s /bin/bash -G sudo coder

RUN echo "PS1='🐳 \[\033[1;34m\]\W\[\033[0;35m\] \[\033[1;36m\]# \[\033[0m\]'" > /home/coder/.bashrc && \
    chown coder:coder /home/coder/.bashrc

USER coder

WORKDIR /home/coder

ENV PATH="/home/coder/.foundry/bin:$PATH"
RUN echo 'export PATH="/home/coder/.foundry/bin:$PATH"' >> /home/coder/.bashrc

RUN curl -L https://getfoundry.sh/install | bash && foundryup

RUN git config --global user.name "23hp" && \
    git config --global user.email "your.email@example.com"
