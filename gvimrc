set guifont=Menlo:h12
set guioptions=aAcer

set lines=46
set columns=120
set transparency=0
"set relativenumber

set background=dark
colorscheme solarized
"highlight StatusLineNC guibg=White
"highlight StatusLine guibg=DarkRed
"highlight Search gui=NONE guibg=Orange guifg=Navy 

" PeepOpen configuration
macmenu &File.New\ Tab key=<nop>
map <D-t> :PeepOpen<CR>
imap <D-t> <Esc>:PeepOpen<CR>
