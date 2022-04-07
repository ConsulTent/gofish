FROM ubuntu:latest

USER root

RUN apt-get update
RUN apt-get install -y git curl wget zip gzip vim sudo
RUN /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
RUN echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /root/.profile
RUN eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

#RUN /bin/bash -c eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"; /home/linuxbrew/.linuxbrew/bin/brew install gcc
#RUN brew install gcc make

WORKDIR /root
COPY bin/gofish /root



ENTRYPOINT [ "/bin/bash" ]
