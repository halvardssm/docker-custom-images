FROM denoland/deno:latest
RUN apt update &&\
    apt upgrade -y &&\
    apt install -y curl &&\
    curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - &&\
    apt install -y nodejs
