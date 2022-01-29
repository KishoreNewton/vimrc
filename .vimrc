syntax on

set scrolloff=8
"set termguicolors"     " enable true colors support
"let ayucolor="dark""   " for dark version of theme
set number
set relativenumber
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
set nohlsearch
set belloff=all
set mouse=a
set relativenumber
set exrc
set background=dark
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
  \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
  \,sm:block-blinkwait175-blinkoff150-blinkon175
set guicursor=

highlight Comment cterm=italic gui=italic term=italic
highlight Statement cterm=italic gui=italic term=italic
highlight Type  cterm=italic gui=italic term=italic
highlight PreProc cterm=bold  gui=bold  term=bold
highlight Special  cterm=bold  gui=bold  term=bold
highlight Underlined  cterm=underline  gui=underline  term=underline

hi SpellBad ctermfg=black 
hi SpellCap ctermfg=black  
hi SpellLocal ctermfg=black
hi SpellRare ctermfg=black
hi SpellRareUnderlined ctermfg=black cterm=underline
hi SpellLocalUnderlined ctermfg=black cterm=underline
hi SpellCapUnderlined ctermfg=black cterm=underline
hi SpellBadUnderlined ctermfg=black cterm=underline
"hi! CocErrorSign guifg=#d1666a"
"hi! CocInfoSign guibg=#353b45"
"hi! CocWarningSign guifg=#d1cd66"


call plug#begin('~/.config/nvim/pack')

Plug 'burntsushi/ripgrep'
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'Chiel92/vim-autoformat'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'mattn/emmet-vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install'  }
Plug 'lyuts/vim-rtags'
Plug 'preservim/nerdtree'
Plug 'git@github.com:kien/ctrlp.vim.git'
Plug 'mbbill/undotree'
Plug 'ayu-theme/ayu-vim'
Plug 'elzr/vim-json'
Plug 'google/vim-jsonnet'
"Plug 'digitaltoad/vim-pug'"
Plug 'maxmellon/vim-jsx-pretty'
"Plug 'ap/vim-css-color'"
Plug 'junegunn/fzf'
Plug 'valloric/youcompleteme'
Plug 'hail2u/vim-css3-syntax'
Plug 'leafgarland/typescript-vim'
Plug 'github/copilot.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"Plug 'palantir/tslint'"
"Plug 'Quramy/tsuquyomi'"
Plug 'neoclide/coc.nvim'
"Plug 'dense-analysis/ale'"
"Plug 'fannheyward/coc-deno'"
"Plug 'dense-analysis/ale'"
"Plug 'vim-denops/denops.vim'"

call plug#end()

if executable('rg')
  let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let mapleader = " "
let g:ctrlp_use_caching = 0
let g:NERDTreeWinPos = "right"
let g:minimap_auto_start = 1
let g:minimap_block_filetypes = ['fugitive', 'nerdtree', 'tagbar']
let g:minimap_git_colors = 1
let g:minimap_highlight_search = 1
let g:ycm_semantic_triggers = { 'c': [ 're!\w{2}' ] }
let g:LanguageClient_serverCommands = {
\ 'rust': ['rust-analyzer'],
\ }
imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")
let g:copilot_no_tab_map = v:true
let g:vim_json_syntax_conceal = 0
" let g:ale_fixers = {'typescript': ['deno']}"
" let g:ale_fix_on_save = 1 " run deno fmt when saving a buffer"

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <Leader>ps :Rg<SPACE>
nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <Leader>gf :YcmCompleter FixIt<CR>

nmap <F6> :NERDTreeToggle<CR>
nmap gr <Plug>(ale_rename)
nmap gR <Plug>(ale_find_reference)
nmap gd <Plug>(ale_go_to_definition)
nmap gD <Plug>(ale_go_to_type_definition)

"colorscheme slate"
