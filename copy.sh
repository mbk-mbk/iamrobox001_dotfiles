#!/bin/bash

REPO=$HOME/dotfiles
DIRECTORIES=(.config .local/bin .themes .icons walls)
FILES=(.bash_profile .bashrc .xinitrc .Xresources .xbindkeysrc)

for dir in ${DIRECTORIES[@]}
do
    if [ -d $HOME/$dir ]; then
        if [ ! -d $REPO/$dir ]; then
            mkdir --parents $REPO/$dir
        fi
        cp -r $HOME/$dir/* $REPO/$dir
    else
        echo " $dir directory does not exist!"
    fi
done

for files in ${FILES[@]}
do
    if [ -f $HOME/$files ]; then
        cp $HOME/$files $REPO
    else
        echo "$files does not exist!"
    fi
done