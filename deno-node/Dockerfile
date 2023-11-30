FROM halvardm/ubuntu-base:latest

# Get args
ARG DENO_VERSION
ARG NODE_VERSION

# Install Node.js with NVM
RUN curl -L https://bit.ly/n-install | bash -s -- -y
RUN if [ -n "$NODE_VERSION" ]; then n $NODE_VERSION; fi

# Install Deno
RUN curl -fsSL https://deno.land/install.sh | sh
ENV DENO_INSTALL="/root/.deno"
ENV PATH="$DENO_INSTALL/bin:$PATH"
RUN if [ -n "$DENO_VERSION" ]; then deno upgrade --version $DENO_VERSION; fi

SHELL ["/bin/bash", "-c"]
