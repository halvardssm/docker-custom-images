FROM homebrew/brew

RUN brew install asdf

RUN echo -e "\n. \"$(brew --prefix asdf)/libexec/asdf.sh\"" >> ~/.bashrc
RUN echo -e "\n. \"$(brew --prefix asdf)/etc/bash_completion.d/asdf.bash\"" >> ~/.bashrc
