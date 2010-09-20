set nocompatible
set nobackup
set autoindent
set smarttab
set incsearch
set hlsearch
set backspace=2
set showcmd
set ruler
set wildmenu
set number
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

set display+=lastline
set showmode
set formatoptions+=1
set wrap
set linebreak
set showbreak=:::
set mousehide
set mouse=a


set statusline=%F%m%r%h%w\ (%{&ff},\ %{\"\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"\"}){%Y}[%04l,%04v][%p%%][LEN=%L]
set statusline+=%{fugitive#statusline()}
set laststatus=2
    

set fileformat=unix
set fileformats=unix,dos
set encoding=utf-8


set guifont=Monaco:h12
set guioptions-=T
set lines=46
set columns=160

filetype plugin on
filetype indent on
syntax on
set shortmess=I

highlight Pmenu guibg=sienna3 gui=bold

imap <F5> <ESC>:w !ruby "%"<CR>

let g:rails_default_file='config/database.yml'
let NERDTreeShowHidden=1
