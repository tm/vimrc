set guifont=Menlo:h12
set guioptions=aAce

set lines=46
set columns=160
set transparency=5
set relativenumber

colorscheme twilight
highlight StatusLineNC guibg=White
highlight StatusLine guibg=DarkRed

" Command-T configuration
macmenu &File.New\ Tab key=<nop>
map <D-t> :CommandT<CR>
imap <D-t> <Esc>:CommandT<CR>
