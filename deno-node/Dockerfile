FROM ubuntu:latest

# Set arguments for Node.js and Deno versions
ARG NODE_VERSION
ARG DENO_VERSION

# Install necessary dependencies for Node.js and Deno
RUN apt-get update && \
    apt-get install -y curl unzip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Install Node.js using the specified version
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

RUN echo 'export NVM_DIR="$HOME/.nvm"'                                       >> "$HOME/.bashrc"
RUN echo '[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm' >> "$HOME/.bashrc"
RUN echo '[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion" # This loads nvm bash_completion' >> "$HOME/.bashrc"

# nodejs and tools
RUN bash -c 'source $HOME/.nvm/nvm.sh && nvm install ${NODE_VERSION} --latest-npm --default'

# Install Deno using the specified version
RUN curl -fsSL https://deno.land/x/install/install.sh | DENO_INSTALL_ROOT=/usr/local sh -s v${DENO_VERSION}

# Set environment variables for Node.js and Deno
ENV PATH="/usr/local/bin:/root/.deno/bin:${PATH}"

# Set the default working directory
WORKDIR /app

# Copy the application files into the container
COPY . .

# Run the application
CMD ["bash"]