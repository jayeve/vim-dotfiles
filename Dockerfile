from alpine

run apk add --no-cache vim git subversion bash bind-tools

workdir /home/dev
env HOME /home/dev

# setup vim
run git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim && \
    git clone https://github.com/jayeve/vim-dotfiles.git && \
    cp -r $HOME/vim-dotfiles/.vim $HOME/ && \
    mv $HOME/vim-dotfiles/.vimrc $HOME/.vimrc && \
    svn checkout https://github.com/jayeve/terminal/trunk/scalabox/dotfiles && \
    cp $HOME/dotfiles/.bash* $HOME && \
    cp $HOME/dotfiles/.tmux* $HOME && \
    rm -r dotfiles && \
    git clone --depth 1 https://github.com/junegunn/fzf.git $HOME/.fzf && \
    bash $HOME/.fzf/install

run alias vi='vim'

run adduser -D -u 1000 dev && chown -R dev: /home/dev
run bash $HOME/.bash_profile
user dev
