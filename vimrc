set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

 " let Vundle manage Vundle
 " required! 
Bundle 'gmarik/vundle'

Bundle 'vim-scripts/TailMinusF'
Bundle 'vim-scripts/YankRing.vim'
Bundle 'mileszs/ack.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'Raimondi/delimitMate'
Bundle 'mattn/gist-vim'
Bundle 'hallettj/jslint.vim'
Bundle 'juvenn/mustache.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'godlygeek/tabular'
Bundle 'timcharper/textile.vim'
Bundle 'SirVer/ultisnips'
Bundle 'tpope/vim-bundler'
Bundle 'kchmck/vim-coffee-script'
Bundle 'altercation/vim-colors-solarized'
Bundle 'basepi/vim-conque'
Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-eunuch'
Bundle 'int3/vim-extradite'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-haml'
Bundle 'KohPoll/vim-less'
Bundle 'gisraptor/vim-lilypond-integrator'
Bundle 'tpope/vim-markdown'
Bundle 'sickill/vim-pasta'
Bundle 'tpope/vim-pastie'
Bundle 'tpope/vim-ragtag'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-repeat'
Bundle 'skwp/vim-ruby-conque'
Bundle 'tpope/vim-rvm'
Bundle 'slim-template/vim-slim'
Bundle 'tpope/vim-surround'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/zencoding-vim'
Bundle 'tpope/vim-rake'


filetype plugin on
filetype indent on

set shell=bash

set ruler
syntax on

set encoding=utf-8

set nobackup
set noswapfile
set backupcopy=yes

set autoindent
set smarttab

"Whitespace stuff
set nowrap
set colorcolumn=80
set tabstop=2
set shiftwidth=2
set softtabstop=2
"set showbreak=:::
set listchars=tab:▶-,trail:.
set list
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
set statusline=%F%m%r%h%w\ (%{&ff},\ %{\"\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"\"}){%Y}[%03l,%03v][%p%%][LEN=%L]
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
" avoid showing matching parenthesis in normal mode
let loaded_matchparen = 1
set cmdheight=2
" set cursorline disabled because of performance problems
" set cursorcolumn
set matchtime=5
set timeoutlen=2000
set visualbell t_vb=
set hidden
set history=1000
set scrolloff=3
set so=8

"" Display settings
set display+=lastline
set showmode
set formatoptions+=1
set formatoptions-=o " don't continue comments when pushing o/O
set linebreak
set mousehide
set mouse=a
set number
set lazyredraw

" change the mapleader from \ to ,
let mapleader=","

nnoremap / /\v
vnoremap / /\v
nnoremap <tab> %
vnoremap <tab> %
nmap <silent> <leader>/ :nohlsearch<CR>
nmap k gk
nmap j gj
vmap k gk
vmap j gj
sunmap k
sunmap j
nnoremap <leader>l :set list!<CR>

" TextMate style Command-Return
inoremap <D-CR> <C-O>o

" automatically append closing characters
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<ESC>O
inoremap {{     {
inoremap {}     {}

" indentation
nmap <D-[> <<
nmap <D-]> >>
vmap <D-[> <gv
vmap <D-]> >gv

" speed up split switching
map <C-k> <C-W>k
map <C-j> <C-W>j
map <C-h> <C-W>h
map <C-l> <C-W>l

" crerate window splits easier
nnoremap <silent> vv <C-w>v
nnoremap <silent> ss <C-w>s


" Ruby hashrocket mapping
imap <C-l> <Space>=><Space>

" rails.vim configuration
let g:rails_default_file='config/database.yml'

" NERDTree configuration
let NERDTreeShowHidden=1
map <leader>n :NERDTreeToggle<CR>

" YankRing configuration
nnoremap <silent> <F11> :YRShow<CR>

" Gist configuration
let g:gist_open_browser_after_post = 1

"UltiSnips configuration
set virtualedit=onemore
set runtimepath+=~/vim
let g:UltiSnipsSnippetDirectories=["UltiSnips", "snippets"]
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Tabular mapping
" map <leader>\ :Tabularize /\|<CR>

" cucumbertables.vim by Tim Pope

inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction


" setting Rails filetypes
autocmd BufNewFile,BufRead app/**/*.rb set filetype=ruby.rails
autocmd BufNewFile,BufRead spec/**/*rb set filetype=ruby.rspec

" setting ejs templates to html syntax
autocmd BufNewFile,BufRead *.ejs set filetype=html

" Use Node.js for JavaScript interpretation
let $JS_CMD='node'
let g:JSLintHighlightErrorLine = 0

" CtrlP configuration
"map <D-t> :CtrlP<CR>
"imap <D-t> <Esc>:CtrlP<CR>
set wildignore+=*/.git/*,*/tmp/*
let g:ctrlp_regexp_search = 1
let g:ctrlp_open_new_file = 0
let g:ctrlp_open_multi = '1t'
let g:ctrlp_working_path_mode = 2

" Zencoding mappings
"let g:user_zen_expandabbr_key='<D-\>'
"imap <D-\> <C-y>,
"vmap <D-\> <C-y>,
"let g:user_zen_next_key='<D-n>'
"let g:user_zen_prev_key='<D-p>'
let g:user_zen_settings = {
\  'scss' : {
\    'filters' : 'fc'
\  }
\}

" Ruby Conque mappings
nmap <silent> <D-R> :call RunRspecCurrentFileConque()<CR>
nmap <silent> <D-L> :call RunRspecCurrentLineConque()<CR>
nmap <silent> ,<D-R> :call RunLastConqueCommand()<CR>


" Preview in Marked.app
:nnoremap <leader>m :silent !open -a Marked.app '%:p'<cr>
