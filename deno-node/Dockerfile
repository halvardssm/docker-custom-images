FROM halvardm/asdf:latest

# Set arguments for Node.js and Deno versions
ARG NODE_VERSION=latest
ARG DENO_VERSION=latest

# Install necessary dependencies for Node.js and Deno
RUN sudo apt install gpg curl gawk -y

# Install Node.js and Deno
RUN asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
RUN asdf plugin add deno https://github.com/asdf-community/asdf-deno.git

# Install Node.js and Deno versions
RUN asdf install nodejs ${NODE_VERSION}
RUN asdf install deno ${DENO_VERSION}

# Set Node.js and Deno versions as global
RUN asdf global nodejs ${NODE_VERSION}
RUN asdf global deno ${DENO_VERSION}
