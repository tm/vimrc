set guifont=Menlo:h12
set guioptions=aAcer
set linespace=2
set antialias

set lines=46
set columns=120
set transparency=0
"set relativenumber

set background=dark
colorscheme twilight
highlight StatusLineNC guibg=White
highlight StatusLine guibg=DarkRed
highlight Search gui=NONE guibg=Orange guifg=Navy 

" disable New Tab for plugins like CtrlP
if has('mac')
  macmenu &File.New\ Tab key=<nop>
endif
