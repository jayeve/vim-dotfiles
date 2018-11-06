from alpine

run apk add --no-cache \
    curl \
    git \
    subversion \
    vim \
    py3-pip \
    bash \
    the_silver_searcher \
    openssh

workdir /home/dev
env HOME /home/dev

# configure bash and vim
run svn checkout https://github.com/jayeve/terminal/trunk/scalabox/dotfiles && \
    cp $HOME/dotfiles/.bash* $HOME && \
    cp $HOME/dotfiles/.tmux* $HOME && \
    rm -r dotfiles && \
    git clone --depth 1 https://github.com/junegunn/fzf.git $HOME/.fzf && \
    $HOME/.fzf/install && \
    pip3 install sexpdata websocket-client && \
    git clone https://github.com/jayeve/vim-dotfiles.git $HOME/vim-dotfiles && \
    cd $HOME/vim-dotfiles && \
    ./install.sh && \
    rm -rf $HOME/vim-dotfiles

run adduser -D -u 1000 dev && chown -R dev: /home/dev
user dev
cmd bash
