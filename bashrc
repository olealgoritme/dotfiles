export PATH="$PATH:/usr/local/bin:$HOME/.local/bin"
[ -f ~/.bashrc_work ] && . ~/.bashrc_work || true

# Return if not interactive
[[ $- != *i* ]] && return

# Where are my dotfiles
export DOTFILES=~/dotfiles

# Setup environment, common to both bash and zsh
shopt -s expand_aliases
shopt -s checkwinsize

### Append to the history file
HISTCONTROL=ignoreboth:erasedups
shopt -s histappend

# vi mode for readline
set -o vi
bind -m vi-insert '"jj": vi-movement-mode'

# FZF
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

[ -f $DOTFILES/environment.sh ] && . $DOTFILES/environment.sh

[ -f $DOTFILES/bash_prompt ] && . $DOTFILES/bash_prompt

#eval `dircolors /home/xuw/.dir_colors/dircolors`


# gives cmd auto completion, even when sudo
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

