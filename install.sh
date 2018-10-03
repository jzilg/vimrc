#!/bin/bash

copyFiles() {
    cp ./vimrc ~/.vimrc
    printf "\n.vimrc copied"
    cp -r ./vim ~/.vim
    printf "\n.vim/ copied"
}

if [ -e ~/.vimrc ] || [ -d ~/.vim ]
then
    read -p "Overwrite existing settings (y/n)? " -n 1 -r
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
        copyFiles
    fi
else
    copyFiles
fi
