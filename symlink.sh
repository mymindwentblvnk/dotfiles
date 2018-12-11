#!/bin/bash

for i in .[^.]*; do
    if [ $i != '.git' ]; then
        rm $HOME/$i
        ln -s $PWD/$i $HOME/$i
    fi
done
