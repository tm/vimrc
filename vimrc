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
"set showbreak=:::
set listchars=tab:▶-,eol:¶,trail:‧
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
" set cursorcolumn
set matchtime=5
set timeoutlen=2000
set visualbell t_vb=
set hidden
set history=1000
set scrolloff=3
set so=8

" Display settings
set display+=lastline
set showmode
set formatoptions+=1
set formatoptions-=o " don't continue comments when pushing o/O
set linebreak
set mousehide
set mouse=a
set number


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
nmap <silent> // :nohlsearch<CR>
nmap k gk
nmap j gj
vmap k gk
vmap j gj
sunmap k
sunmap j
nnoremap <leader>l :set list!<CR>

" TextMate style Command-Return
inoremap <D-CR> <C-O>o

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

" don't have to use Shift to get into command mode
nnoremap ; :


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

" ZenCoding mapping
let g:user_zen_expandabbr_key = '<D-e>'

" setting Rails filetypes
autocmd BufNewFile,BufRead app/**/*.rb set filetype=ruby.rails
autocmd BufNewFile,BufRead spec/**/*rb set filetype=ruby.rspec

" Use Node.js for JavaScript interpretation
let $JS_CMD='node'

" CtrlP
let g:ctrlp_map = '<D-p>'
