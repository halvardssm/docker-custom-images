FROM halvardm/ubuntu-base:latest

# Get args
ARG DENO_VERSION
ARG NODE_VERSION

# Install Node.js with NVM
SHELL ["/bin/bash", "--login", "-i", "-c"]
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
ENV NVM_DIR="$HOME/.nvm"
RUN source $HOME/.bashrc
RUN nvm install --lts --latest-npm && nvm use --lts
RUN if [ -n "$NODE_VERSION" ]; then nvm install $NODE_VERSION && nvm use $NODE_VERSION; fi

# Install Deno
RUN curl -fsSL https://deno.land/install.sh | sh
ENV DENO_INSTALL="/root/.deno"
ENV PATH="$DENO_INSTALL/bin:$PATH"
RUN if [ -n "$DENO_VERSION" ]; then deno upgrade --version $DENO_VERSION; fi

SHELL ["/bin/bash", "-c"]
