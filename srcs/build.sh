#!/bin/bash

tar zxvf libevent-2.0.22-stable.tar.gz
cd libevent-2.0.22-stable
./configure --prefix=$HOME/JimFiles/out
make -j4 && make install
cd ..
rm -rf libevent-2.0.22-stable

tar zxvf ncurses-5.9.tar.gz
cd ncurses-5.9
./configure --prefix=$HOME/JimFiles/out --without-manpages
make -j4 && make install
cd ..
rm -rf ncurses-5.9

tar zxvf tmux-2.2.tar.gz
cd tmux-2.2
./configure --prefix=$HOME/JimFiles/out CFLAGS="-I$HOME/JimFiles/out/include -I$HOME/JimFiles/out/include/ncurses" LDFLAGS="-L$HOME/JimFiles/out/lib"
make -j4 && make install
cd ..
rm -rf tmux-2.2

