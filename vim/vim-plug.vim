" Vim-Plug {{
if empty(glob('~/.vim/autoload/plug.vim'))
      silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
          \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

"Plug 'tpope/vim-eunuch'     "Vim sugar for the UNIX shell commands that need it the most
"Plug 'python-mode/python-mode', { 'for': [ 'python'], 'branch': 'develop' }


" oles
"Plug 'artur-shaik/vim-javacomplete2'
Plug 'dracula/vim', {'as': 'dracula'}
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'pangloss/vim-javascript'
Plug 'vim-scripts/JavaRun'
Plug '~/.vim/plugged/YouCompleteMe'
Plug '~/.vim/plugged/java_getset'

"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'

Plug 'bling/vim-airline'
Plug 'will133/vim-dirdiff'
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-startify'
Plug 'stefandtw/quickfix-reflector.vim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-dispatch'
Plug 'JalaiAmitahl/maven-compiler.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'Yggdroot/indentLine'
Plug 'ronakg/quickr-cscope.vim', { 'for': [ 'c', 'cpp', 'h' ] }
Plug 'ronakg/quickr-preview.vim'
Plug 'rhysd/vim-clang-format', { 'for': [ 'c', 'cpp', 'h', 'java' ] }


Plug 'wellle/targets.vim'
"Plug 'tpope/vim-unimpaired'
Plug 'Raimondi/delimitMate'
Plug 'rhysd/clever-f.vim'
Plug 'vim-utils/vim-man'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
"Plug 'christoomey/vim-tmux-navigator'
Plug 'plasticboy/vim-markdown', { 'for': [ 'md' ] }
Plug 'mzlogin/vim-markdown-toc', { 'for': [ 'md' ] }
Plug 'roxma/vim-tmux-clipboard'
"Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'nathanalderson/yang.vim', { 'for': [ 'yang' ] }
Plug 'kana/vim-operator-user'
"Plug 'osyo-manga/vim-anzu'
Plug 'haya14busa/vim-operator-flashy'
Plug 'haya14busa/is.vim'
Plug 'haya14busa/vim-asterisk'
Plug 'luochen1990/rainbow'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'zchee/deoplete-jedi', { 'for': [ 'python' ] }
Plug 'zchee/deoplete-clang', { 'for': [ 'c', 'cpp', 'h' ] }
Plug 'Shougo/neoinclude.vim'

"Plug 'junegunn/gv.vim'
"Plug 'terryma/vim-multiple-cursors'
Plug 'majutsushi/tagbar', { 'for': [ 'java' ] }
Plug 'sheerun/vim-polyglot'
Plug 'sickill/vim-pasta'
Plug 'davidhalter/jedi-vim', { 'for': [ 'python' ] }

" Colorschemes
Plug 'vim-airline/vim-airline-themes'
"Plug 'morhetz/gruvbox'

call plug#end()
" }}
