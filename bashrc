export PATH="$PATH:/usr/local/bin:$HOME/.local/bin"
[ -f ~/.bashrc_work ] && . ~/.bashrc_work || true

export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
# Return if not interactive
[[ $- != *i* ]] && return

neofetch

if [ -f `which powerline-daemon` ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . /home/xuw/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
fi

#export LS_COLORS="$(vivid generate snazzy)"

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




# trueline conf

#declare -A TRUELINE_COLORS=(
#    [light_blue]='75;161;207'
#    [grey]='99;99;100'
#    [pink]='199;88;157'
#)

#declare -a TRUELINE_SEGMENTS=(
#    'working_dir,light_blue,black,normal'
#    'git,grey,black,normal'
#    'time,white,black,normal'
#    'newline,pink,black,bold'
#)

#declare -A TRUELINE_SYMBOLS=(
#    [git_modified]='*'
#    [git_github]=''
#    [segment_separator]=''
#    [working_dir_folder]='...'
#    [working_dir_separator]='/'
#    [working_dir_home]='~'
#    [newline]='❯'
#    [clock]='🕒'
#)

#TRUELINE_GIT_SHOW_STATUS_NUMBERS=false
#TRUELINE_GIT_MODIFIED_COLOR='grey'
#TRUELINE_WORKING_DIR_SPACE_BETWEEN_PATH_SEPARATOR=false

#_trueline_time_segment() {
#    local prompt_time="${TRUELINE_SYMBOLS[clock]} \t"
#    if [[ -n "$prompt_time" ]]; then
#        local fg_color="$1"
#        local bg_color="$2"
#        local font_style="$3"
#        local segment="$(_trueline_separator)"
#        segment+="$(_trueline_content "$fg_color" "$bg_color" "$font_style" " $prompt_time ")"
#        PS1+="$segment"
#        _last_color=$bg_color
#    fi
#}
#source ~/themes/trueline/trueline.sh


############# BASH DEBUG
# open file descriptor 5 such that anything written to /dev/fd/5
#  # is piped through ts and then to /tmp/timestamps
#  exec 5> >(ts -i "%.s" >> /tmp/timestamps)
#  # https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html
#  export BASH_XTRACEFD="5"
# Enable tracing
#set -x
############## BASH DEBUG END

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
