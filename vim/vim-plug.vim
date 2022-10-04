"Vim-Plug {{
if empty(glob('~/.vim/autoload/plug.vim'))
      silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
          \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
"Plug 'dart-lang/dart-vim-plugin'
"Plug 'thosakwe/vim-flutter'
Plug 'themercorp/themer.lua'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'karb94/neoscroll.nvim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'stevearc/vim-arduino'
Plug 'tomlion/vim-solidity'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'williamboman/nvim-lsp-installer'
"Plug 'neovim/nvim-lspconfig'
Plug 'christoomey/vim-tmux-navigator'
Plug 'roxma/vim-tmux-clipboard'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim', {
        \ 'on': [
            \ 'Ag',
            \ 'Rg',
            \ 'FZF',
            \ 'Files',
            \ 'Buffers',
            \ 'Commits',
            \ 'BCommits',
            \ 'Tags',
            \ 'BTags',
            \ 'History',
            \ 'Lines',
            \ 'BLines',
            \ 'Marks'
        \ ] }
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tikhomirov/vim-glsl'
Plug 'dracula/vim', {'as': 'dracula'}
Plug 'kyazdani42/nvim-web-devicons'
Plug 'akinsho/bufferline.nvim'
Plug 'mhinz/vim-startify'
Plug 'Yggdroot/indentLine'
Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'ludwig/split-manpage.vim'
Plug 'kyazdani42/nvim-web-devicons'
"Plug 'kyazdani42/nvim-tree.lua'
Plug 'ahmedkhalf/project.nvim'
call plug#end()
"}}
