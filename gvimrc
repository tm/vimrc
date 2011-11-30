set guifont=Menlo:h12
set guioptions=aAcer

set lines=46
set columns=160
set transparency=5
set relativenumber

colorscheme twilight
highlight StatusLineNC guibg=White
highlight StatusLine guibg=DarkRed

" PeepOpen configuration
macmenu &File.New\ Tab key=<nop>
map <D-t> :PeepOpen<CR>
imap <D-t> <Esc>:PeepOpen<CR>
