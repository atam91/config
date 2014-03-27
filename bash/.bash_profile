#!/bin/bash

# startx on tty1 || tty2
if [ $(tty) = "/dev/tty1" ] || [ $(tty) = "/dev/tty2" ]; then
    startx
    logout
fi

# read .bashrc
[[ -r ~/.bashrc ]] && . ~/.bashrc
