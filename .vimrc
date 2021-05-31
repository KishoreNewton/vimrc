let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
highlight Comment cterm=italic
set tabstop=2 softtabstop=2
set shiftwidth=2
set background=dark
set expandtab
set noswapfile
set smartindent
set exrc
set relativenumber
set nu
set nohlsearch
set hidden
set noerrorbells
set smartcase
set ballooneval
set belloff=all
autocmd FileType typescript setlocal balloonexpr=tsuquyomi#balloonexpr()
packloadall

call plug#begin()
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
call plug#end()
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'Quramy/tsuquyomi'
Plugin 'sainnhe/vim-color-forest-night'
Plugin 'kien/ctrlp.vim'
Plugin 'VundleVim/Vundle.vim'
Plugin 'eslint/eslint'
Plugin 'valloric/youcompleteme'
Plugin 'prettier/vim-prettier', { 'do': 'yarn install' }
Plugin 'pangloss/vim-javascript'    
Plugin 'leafgarland/typescript-vim' 
Plugin 'maxmellon/vim-jsx-pretty'   
Plugin 'jparise/vim-graphql'        
Plugin 'preservim/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
call vundle#end()            
filetype plugin indent on    
