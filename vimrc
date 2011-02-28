set nocompatible

set nobackup
set noswapfile

set autoindent
set smarttab

set incsearch
set hlsearch
set ignorecase
set smartcase


set backspace=2
set showcmd
set ruler
set wildmenu
set wildmode=list:longest
set expandtab
set shiftwidth=2
set softtabstop=2
set showmatch
set cmdheight=2
set cursorline
set matchtime=5
set confirm
set autowrite
set timeoutlen=2000
set visualbell t_vb=
set hidden
set ignorecase
set smartcase
set history=1000
set undolevels=1000
set scrolloff=3
set gdefault

set display+=lastline
set showmode
set formatoptions+=1
set wrap
"set colorcolumn=85
set linebreak
set showbreak=:::
set listchars=tab:▶\ ,eol:¶
set mousehide
set mouse=a

set laststatus=2
set statusline=%F%m%r%h%w\ (%{&ff},\ %{\"\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"\"}){%Y}[%04l,%04v][%p%%][LEN=%L]
" fugitive part of ststus line
set statusline+=%{fugitive#statusline()}

set fileformat=unix
set fileformats=unix,dos
set encoding=utf-8

filetype plugin on
filetype indent on
syntax on
set shortmess=I

" change the mapleader from \ to ,
let mapleader=","

nnoremap / /\v
vnoremap / /\v
nnoremap <tab> %
vnoremap <tab> %
map <D-r> <ESC>:w !ruby "%"<CR>
map! <D-r> <ESC>:w !ruby "%"<CR>
nmap <silent> ,/ :nohlsearch<CR>
nnoremap <silent> <F11> :YRShow<CR>
map k gk
map j gj
nnoremap <leader>l :set list!<CR>


" rails.vim settings
let g:rails_default_file='config/database.yml'

" NERDTree settings
let NERDTreeShowHidden=1


"au FocusLost * :wa

" open browser after post to Gist
let g:gist_open_browser_after_post = 1
