#!/bin/bash
[ ! -L ~/.vimrc ]      && ln -ns JimFiles/vimrc ~/.vimrc
[ ! -L ~/.vim ]        && ln -ns JimFiles/vimFiles ~/.vim
[ ! -L ~/.tmux.conf ]  && ln -ns JimFiles/tmux.conf ~/.tmux.conf

#append bashrc.jim to ~/.bashrc
str=bashrc.jim
exe=`grep $str $HOME/.bashrc`
if [ x"$exe" == x ]; then
    echo "source ~/JimFiles/$str" >> $HOME/.bashrc
fi

