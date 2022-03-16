let mapleader = " "

set clipboard+=unnamedplus

imap jj <Esc>
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

set splitbelow splitright
    map <C-h> <C-w>h
    map <C-j> <C-w>j
    map <C-k> <C-w>k
    map <C-l> <C-w>l

nnoremap S :%s///g<Left><Left><Left>

let g:user_emmet_mode='n'
let g:user_emmet_leader_key=','

set exrc
set guicursor=
set relativenumber
set nu
set nohlsearch
set incsearch
set hidden

set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

set incsearch
set scrolloff=8

set signcolumn=yes

call plug#begin('~/.vim/plugged')
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'L3MON4D3/LuaSnip'
    Plug 'saadparwaiz1/cmp_luasnip'

    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'BurntSushi/ripgrep'
    Plug 'sharkdp/fd'

    Plug 'mattn/emmet-vim'
call plug#end()

lua require('hammocksleeper')
