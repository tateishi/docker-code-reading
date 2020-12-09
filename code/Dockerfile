FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive
ENV USER=ubuntu

RUN apt-get update && apt-get install -y --no-install-recommends \
        language-pack-ja \
        build-essential \
        xorg-dev \
        ca-certificates \
        git \
        bash-completion \
        cmake \
        vim \
        global \
        curl \
        wget \
        less \
        source-highlight

RUN update-locale LANG=ja_JP.UTF-8
ENV LANG=ja_JP.utf-8
RUN useradd -u 1000 -m -s /bin/bash ${USER}

USER ${USER}
WORKDIR /home/${USER}

RUN echo "[ -f ~/.config/bash/bashrc_extra.sh ] && source ~/.config/bash/bashrc_extra.sh" >> ~/.bashrc
RUN mkdir -p .config tmp
COPY files/config.tar.gz tmp
RUN tar xvzf tmp/config.tar.gz -C .config
RUN mkdir -p .vim && ln -s ~/.config/vim/vimrc .vim/vimrc
RUN mkdir -p .vim/bundle && git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
