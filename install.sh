#!/bin/bash

cp -iv ./src/vimrc ~/.vimrc
cp -riv ./src/vim ~/.vim

git clone git://github.com/jiangmiao/auto-pairs.git ~/.vim/bundle/auto-pairs
