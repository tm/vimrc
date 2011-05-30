set nocompatible

" Pathogen call
filetype off 
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()


set ruler
syntax on

set encoding=utf-8

set nobackup
set noswapfile
set backupcopy=yes

set autoindent
set smarttab

"Whitespace stuff
set wrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set showbreak=:::
set listchars=tab:▶\ ,eol:¶
set expandtab

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set gdefault

" Tab completion
set wildmode=list:longest
set wildmenu

" Status bar
set laststatus=2
set statusline=%F%m%r%h%w\ (%{&ff},\ %{\"\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"\"}){%Y}[%04l,%04v][%p%%][LEN=%L]
" fugitive part of status line
set statusline+=%{fugitive#statusline()}
" rvm part of status line
set statusline+=%{rvm#statusline()}

" File write
set confirm
set autowrite
set undolevels=1000
set shortmess=I
set fileformat=unix
set fileformats=unix,dos

" Editing
set backspace=2
set showcmd
set showmatch
set cmdheight=2
set cursorline
set matchtime=5
set timeoutlen=2000
set visualbell t_vb=
set hidden
set history=1000
set scrolloff=3

" Display settings
set display+=lastline
set showmode
set formatoptions+=1
set linebreak
set mousehide
set mouse=a

"indentation
nmap <D-[> <<
nmap <D-]> >>
vmap <D-[> <gv
vmap <D-]> >gv



filetype plugin on
filetype indent on

" change the mapleader from \ to ,
let mapleader=","

nnoremap / /\v
vnoremap / /\v
nnoremap <tab> %
vnoremap <tab> %
map <D-r> <ESC>:w !ruby "%"<CR>
map! <D-r> <ESC>:w !ruby "%"<CR>
nmap <silent> ,/ :nohlsearch<CR>
nmap k gk
nmap j gj
vmap k gk
vmap j gj
sunmap k
sunmap j
nnoremap <leader>l :set list!<CR>

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>


" Ruby mappings
imap <C-l> <Space>=><Space>

" rails.vim configuration
let g:rails_default_file='config/database.yml'

" Command-T configuration
let g:CommandTMaxHeight=20

" NERDTree configuration
let NERDTreeShowHidden=1
map <leader>n :NERDTreeToggle<CR>

" YankRing configuration
nnoremap <silent> <F11> :YRShow<CR>

" Gist configuration
let g:gist_open_browser_after_post = 1
