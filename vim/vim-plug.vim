"Vim-Plug {{
if empty(glob('~/.vim/autoload/plug.vim'))
      silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
          \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'posva/vim-vue'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'arcticicestudio/nord-vim'
"Plug 'christoomey/vim-tmux-navigator'
"Plug 'vim-scripts/dbext.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'SirVer/ultisnips'
Plug 'majutsushi/tagbar'
"Plug 'skywind3000/asyncrun.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim', {'as': 'dracula'}
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'mhinz/vim-startify'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-fugitive'
Plug 'roxma/vim-tmux-clipboard'
call plug#end()
"}}
