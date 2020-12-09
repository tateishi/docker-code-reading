FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive
ENV USER=ubuntu

RUN apt-get update && apt-get install -y --no-install-recommends \
        build-essential \
        xorg-dev \
        git \
        bash-completion \
        cmake \
        vim \
        global \
        curl \
        wget \
        less \
        source-highlight

RUN useradd -u 1000 -m -s /bin/bash ${USER}

USER ${USER}
WORKDIR /home/${USER}

RUN echo "[ -f ~/.config/bash/bashrc_extra.sh ] && source ~/.config/bash/bashrc_extra.sh" >> ~/.bashrc
RUN mkdir -p .config tmp
COPY files/config.tar.gz tmp
RUN tar xvzf tmp/config.tar.gz -C .config
