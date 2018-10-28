from alpine

run apk add --no-cache \
    curl \
    git \
    subversion \
    bash \
    bind-tools \
    python-dev \
    python3-dev \
    ruby \
    ruby-dev \
    libx11-dev \
    libxt-dev \
    gtk+3.0-dev \
    ncurses5 \
    ncurses-dev \
    build-base \
    py3-pip \
    neovim

run git clone https://github.com/vim/vim.git

run cd vim && ./configure --with-features=huge \
    --enable-pythoninterp=yes \
    --enable-python3interp=yes \
    --enable-luainterp=yes && make && make install

workdir /home/dev
env HOME /home/dev

# setup bash
run svn checkout https://github.com/jayeve/terminal/trunk/scalabox/dotfiles && \
    cp $HOME/dotfiles/.bash* $HOME && \
    cp $HOME/dotfiles/.tmux* $HOME && \
    rm -r dotfiles && \
    git clone --depth 1 https://github.com/junegunn/fzf.git $HOME/.fzf && \
    $HOME/.fzf/install

# setup vim
run pip3 install sexpdata websocket-client
run git clone https://github.com/jayeve/vim-dotfiles.git $HOME/vim-dotfiles && \
    cd $HOME/vim-dotfiles && \
    ./install.sh && \
    rm -rf $HOME/vim-dotfiles

run adduser -D -u 1000 dev && chown -R dev: /home/dev
user dev
cmd bash
