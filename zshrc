export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin:$PATH

# cargo binaries
export PATH=/home/xuw/.cargo/bin:$PATH

# llvm 13
export PATH=/usr/llvm13.0/bin:$PATH

# doom emacs
export PATH=/home/xuw/.emacs.d/bin:$PATH

# oh my zsh
export ZSH="/home/xuw/.oh-my-zsh"
plugins=(
    git
    vi-mode
)
source $ZSH/oh-my-zsh.sh

alias vim="nvim"

# Where are my dotfiles
export DOTFILES=~/dotfiles

# Setup environment, common to both bash and zsh
[ -f $DOTFILES/environment.sh ] && . $DOTFILES/environment.sh

setopt NO_BG_NICE
setopt NO_HUP
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS
setopt LOCAL_TRAPS
#setopt IGNORE_EOF
setopt PROMPT_SUBST

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# history
setopt HIST_VERIFY
setopt EXTENDED_HISTORY
setopt HIST_REDUCE_BLANKS
setopt SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt INC_APPEND_HISTORY
setopt APPEND_HISTORY

setopt COMPLETE_ALIASES

[ -f $DOTFILES/zsh_prompt ] && . $DOTFILES/zsh_prompt

# FZF
if [ -f ~/.fzf.zsh ]; then
  . ~/.fzf.zsh
fi

alias xclip="xclip -selection c"
alias xpaste="xclip -selection c -o"
test -r "~/.dir_colors" && eval $(dircolors ~/.dir_colors)
alias mpv="mpv --no-border --autofit=600 --opengl-pbo=yes"

export SDL_VIDEO_FULLSCREEN_HEAD=1

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


transfer(){ if [ $# -eq 0 ];then echo "No arguments specified.\nUsage:\n transfer <file|directory>\n ... | transfer <file_name>">&2;return 1;fi;if tty -s;then file="$1";file_name=$(basename "$file");if [ ! -e "$file" ];then echo "$file: No such file or directory">&2;return 1;fi;if [ -d "$file" ];then file_name="$file_name.zip" ,;(cd "$file"&&zip -r -q - .)|curl --progress-bar --upload-file "-" "https://transfer.sh/$file_name"|tee /dev/null,;else cat "$file"|curl --progress-bar --upload-file "-" "https://transfer.sh/$file_name"|tee /dev/null;fi;else file_name=$1;curl --progress-bar --upload-file "-" "https://transfer.sh/$file_name"|tee /dev/null;fi;}
