#!/bin/bash

REPO=$HOME/dotfiles
DIRECTORIES=(.config .local/bin .themes .icons walls)
CONFIGDIRS=(i3 bspwm sxhkd polybar vis compton ranger)
FILES=(.bash_profile .bashrc .xinitrc .Xresources .xbindkeysrc)

for dir in ${DIRECTORIES[@]}
do
    if [ -d $HOME/$dir ]; then
        if [ ! -d $REPO/$dir ]; then
            mkdir --parents $REPO/$dir
        fi
        if [ $dir == ".config" ]; then
            for subdir in ${CONFIGDIRS[@]}
            do
                if [ ! -d $REPO/$dir/$subdir ]; then
                    mkdir --parents $REPO/$dir/$subdir
                fi
                cp -r $HOME/$dir/$subdir/* $REPO/$dir/$subdir
            done
        else
            cp -r $HOME/$dir/* $REPO/$dir
        fi
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