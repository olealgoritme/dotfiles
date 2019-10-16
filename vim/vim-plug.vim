"Vim-Plug {{
if empty(glob('~/.vim/autoload/plug.vim'))
      silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
          \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" DEOPLETE START
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
" DEOPLETE END

" YouCompleteMe
function! BuildYCM(info)
  " info is a dictionary with 3 fields
  " - name:   name of the plugin
  " - status: 'installed', 'updated', or 'unchanged'
  " - force:  set on PlugInstall! or PlugUpdate!
  if a:info.status == 'installed' || a:info.force
    !./install.py
  endif
endfunction


"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
Plug 'ycm-core/YouCompleteMe', { 'do': function('BuildYCM') }
Plug 'majutsushi/tagbar'
Plug 'skywind3000/asyncrun.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dracula/vim', {'as': 'dracula'}
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'pangloss/vim-javascript'
Plug 'vim-scripts/JavaRun'
Plug 'liuchengxu/vim-which-key'
Plug 'vim-airline/vim-airline'
Plug 'will133/vim-dirdiff'
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
Plug 'Raimondi/delimitMate'
Plug 'rhysd/clever-f.vim'
Plug 'vim-utils/vim-man'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'plasticboy/vim-markdown', { 'for': [ 'md' ] }
Plug 'mzlogin/vim-markdown-toc', { 'for': [ 'md' ] }
Plug 'roxma/vim-tmux-clipboard'
Plug 'nathanalderson/yang.vim', { 'for': [ 'yang' ] }
Plug 'kana/vim-operator-user'
Plug 'haya14busa/vim-operator-flashy'
Plug 'haya14busa/is.vim'
Plug 'haya14busa/vim-asterisk'
Plug 'luochen1990/rainbow'
Plug 'Shougo/neoinclude.vim'
Plug 'sheerun/vim-polyglot'
Plug 'sickill/vim-pasta'
Plug 'davidhalter/jedi-vim', { 'for': [ 'python' ] }

call plug#end()
"}}
