# .bashrc
# Autor: ChepeCarlos <ChepeCarlos@alsw.net>
# Codigo: https://github.com/chepecarlos/dotfile

# If not running interactively, don't do anything
case $- in
    *i*) ;;
    *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000
HISTTIMEFORMAT="%Y-%m-%d %T "

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"


# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ];
then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix;
then
    if [ -f /usr/share/bash-completion/bash_completion ];
    then
        . /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ];
    then
        . /etc/bash_completion
    fi
fi

# Innorar MAYUSCULAS o minusculas en auto TAB
bind "set completion-ignore-case on"

# Agregando binanios locales
if [ -d "$HOME/.local/bin" ] ;
then
    PATH="$HOME/.local/bin:$PATH"
fi

# Agregar de Alias
if [ -f ~/.bash_aliases ];
then
    . ~/.bash_aliases
fi

# Agregando binanios gems
if [ -d "$HOME/gems" ] ;
then
    GEM_HOME="$HOME/gems"
fi

# Agregar gems
if [ -d "$HOME/gems/bin" ] ;
then
    PATH="$HOME/gems/bin:$PATH"
fi

# Agregando Arduino-cli
if [ -d "$HOME/5.Programas/3.Desarrollo/1.Arduino/Arduino-cli" ] ;
then
    PATH="$HOME/5.Programas/3.Desarrollo/1.Arduino/Arduino-cli:$PATH"
fi

# Agregando Blender
if [ -d "$HOME/5.Programas/1.Edicion/1.Blender/blender-3.0.0" ] ;
then
    PATH="$HOME/5.Programas/1.Edicion/1.Blender/blender-3.0.0:$PATH"
fi

# Agregando gifgen
# https://github.com/lukechilds/gifgen
if [ -d "$HOME/5.Programas/8.Extras/gifgen" ] ;
then
    PATH="$HOME/5.Programas/8.Extras/gifgen:$PATH"
fi

# Pront de Terminal
export PS1="\[\e[0;1m\]┌─(\[\e[31;1m\]\u@\H\[\e[0;1m\])»{\[\e[36;1m\]\w\[\e[0;1m\]}\n└──┤ \[\e[0m\]"

# git especial para dotfile
alias config='/usr/bin/git --git-dir=/home/chepecarlos/.cfg --work-tree=/home/chepecarlos'
