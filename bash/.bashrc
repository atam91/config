#!/bin/bash

# read aliases
[[ -r ~/.bash_aliases ]] && . ~/.bash_aliases

# setup enviroment
[[ -r ~/.bash_env ]] && . ~/.bash_env

export EDITOR='vim'


# history
# Теперь каждая введенная вами команда будет писаться в историю сразу же. 
shopt -s histappend
PROMPT_COMMAND='history -a'

# поиск по истори с помощью стрелов вверх вниз
set blink-matching-paren on
set completion-ignore-case on

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind '"\eOA": history-search-backward'
bind '"\eOB": history-search-forward'

# очищаем строку Ctrl-j
bind '"\C-j": "\C-k \C-u"'
