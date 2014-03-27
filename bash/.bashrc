#!/bin/bash

# read aliases
[[ -r ~/.bash_aliases ]] && . ~/.bash_aliases

# setup enviroment
[[ -r ~/.bash_env ]] && . ~/.bash_env

export EDITOR='vim'
