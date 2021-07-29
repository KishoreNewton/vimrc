" Old config Jly 19 01:37 "
syntax on
set t_ZH=^[[3m
set t_ZR=^[[23m
let &t_ZH="\e[3m"  ""
let &t_ZR="\e[23m"
let g:clang_library_path='/usr/lib/llvm-10/lib/libclang.so'
let g:NERDTreeWinPos = "right"
set path+=**
set wildignore+=**/node_modules/**
set tabstop=2 softtabstop=2
set shiftwidth=2
set background=dark
set expandtab
set noswapfile
set smartindent
set exrc
set relativenumber
set mouse=a
set nu
set invnumber
set nohlsearch
set hidden
set noerrorbells
set smartcase
set ballooneval
set belloff=all
highlight Comment cterm=italic gui=italic term=italic
highlight Statement  cterm=italic gui=italic term=italic
highlight Type  cterm=italic gui=italic term=italic
highlight PreProc cterm=bold  gui=bold  term=bold
highlight Special  cterm=bold  gui=bold  term=bold
highlight Underlined  cterm=underline  gui=underline  term=underline
highlight Error  cterm=underline  gui=underline  term=underline

set clipboard=unnamedplus
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
nmap <F6> :NERDTreeToggle<CR>
autocmd FileType typescript setlocal balloonexpr=tsuquyomi#balloonexpr()
packloadall
vmap <leader>c :!xclip -f -sel clip<CR>
map <leader>xpp mz:-1r !xclip -o -sel clip<CR>`z
filetype plugin on

call plug#begin()
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
call plug#end()
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'nvie/vim-flake8'
Plugin 'davidhalter/jedi-vim'
Plugin 'Quramy/tsuquyomi'
Plugin 'sainnhe/vim-color-forest-night'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'c.vim'
Plugin 'eslint/eslint'
Plugin 'DoxygenToolkit.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'rip-rip/clang_complete'
Plugin 'VundleVim/Vundle.vim'
Plugin 'valloric/youcompleteme'
Plugin 'palantir/tslint'
Plugin 'Chiel92/vim-autoformat'
Plugin 'taglist.vim'
Plugin 'codota/tabnine-vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'heavenshell/vim-jsdoc'
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


" Old config Jly 19 01:37 "

syntax on 

set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nu
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set invnumber
set belloff=all
set mouse=a
set relativenumber
set exrc
set background=dark

highlight Comment cterm=italic gui=italic term=italic
highlight Statement  cterm=italic gui=italic term=italic
highlight Type  cterm=italic gui=italic term=italic
highlight PreProc cterm=bold  gui=bold  term=bold
highlight Special  cterm=bold  gui=bold  term=bold
highlight Underlined  cterm=underline  gui=underline  term=underline
highlight Error  cterm=underline  gui=underline  term=underline

call plug#begin('~/.vim/plugged')

Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'prettier/vim-prettier', { 'do': 'yarn install'  }
Plug 'lyuts/vim-rtags'
Plug 'preservim/nerdtree'
Plug 'git@github.com:kien/ctrlp.vim.git'
Plug 'git@github.com:Valloric/YouCompleteMe.git'
Plug 'mbbill/undotree'

call plug#end()

if executable('rg')
  let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let mapleader = " "
let g:netrw_browse_split = 2
let g:netrw_banner = 0 
let g:netrw_winsize = 25
let g:ctrlp_use_caching = 0
let g:NERDTreeWinPos = "right"

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR> 
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <Leader>ps :Rg<SPACE>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>
nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <Leader>gf :YcmCompleter FixIt<CR>

nmap <F6> :NERDTreeToggle<CR>

 
"Current Config"

syntax on

set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nu
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set invnumber
set belloff=all
set mouse=a
set relativenumber
set exrc
set background=dark

highlight Comment cterm=italic gui=italic term=italic
highlight Statement  cterm=italic gui=italic term=italic
highlight Type  cterm=italic gui=italic term=italic
highlight PreProc cterm=bold  gui=bold  term=bold
highlight Special  cterm=bold  gui=bold  term=bold
highlight Underlined  cterm=underline  gui=underline  term=underline

hi SpellBad ctermfg=black

call plug#begin('~/.vim/plugged')

Plug 'Chiel92/vim-autoformat'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'prettier/vim-prettier', { 'do': 'yarn install'  }
Plug 'lyuts/vim-rtags'
Plug 'preservim/nerdtree'
Plug 'git@github.com:kien/ctrlp.vim.git'
Plug 'git@github.com:Valloric/YouCompleteMe.git'
Plug 'mbbill/undotree'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'wfxr/minimap.vim', {'do': ':!cargo install --locked code-minimap'}

call plug#end()

if executable('rg')
  let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let mapleader = " "
let g:ctrlp_use_caching = 0
let g:NERDTreeWinPos = "right"
let g:minimap_auto_start=1

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <Leader>ps :Rg<SPACE>
nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <Leader>gf :YcmCompleter FixIt<CR>


nmap <F6> :NERDTreeToggle<CR>


