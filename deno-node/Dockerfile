FROM halvardm/ubuntu-base:latest

# Install Node.js with NVM
RUN curl -L https://bit.ly/n-install | bash -s -- -y
ENV N_PREFIX="/root/n"
ENV PATH="$N_PREFIX/bin:$PATH"
RUN n lts
RUN npm install -g npm@latest yarn

# Install Deno
RUN curl -fsSL https://deno.land/install.sh | sh
ENV DENO_INSTALL="/root/.deno"
ENV PATH="$DENO_INSTALL/bin:$PATH"
