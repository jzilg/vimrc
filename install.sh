#!/bin/bash

# copy .vimrc
cp -iv ./src/vimrc ~/.vimrc

# create .vim directory
if [ ! -d "~/.vim" ]; then
    mkdir ~/.vim
fi

# color onedark
git clone https://github.com/joshdick/onedark.vim.git

if [ ! -d "~/.vim/colors" ]; then
    mkdir ~/.vim/colors
fi

if [ ! -d "~/.vim/autoload" ]; then
    mkdir ~/.vim/autoload
fi

cp ./onedark.vim/colors/onedark.vim ~/.vim/colors/onedark.vim
cp ./onedark.vim/autoload/onedark.vim ~/.vim/autoload/onedark.vim
rm -rf ./onedark.vim

# auto-pairs
git clone git://github.com/jiangmiao/auto-pairs.git ~/.vim/bundle/auto-pairs

# editorconfig-vim support
git clone https://github.com/editorconfig/editorconfig-vim.git

if [ ! -d "~/.vim/autoload" ]; then
    mkdir ~/.vim/autoload
fi

if [ ! -d "~/.vim/doc" ]; then
    mkdir ~/.vim/doc
fi

if [ ! -d "~/.vim/plugin" ]; then
    mkdir ~/.vim/plugin
fi

cp -iv ./editorconfig-vim/autoload/editorconfig.vim ~/.vim/autoload/editorconfig.vim
cp -iv ./editorconfig-vim/doc/editorconfig.txt ~/.vim/doc/editorconfig.txt
cp -iv ./editorconfig-vim/plugin/editorconfig.py ~/.vim/plugin/editorconfig.py
cp -iv ./editorconfig-vim/plugin/editorconfig.vim ~/.vim/plugin/editorconfig.vim
cp -riv ./editorconfig-vim/plugin/editorconfig-core-py ~/.vim/plugin/editorconfig-core-py
rm -rf ./editorconfig-vim/
