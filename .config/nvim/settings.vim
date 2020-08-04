"
" Vim config
"

syntax on
set number
set shell=/bin/zsh

set splitbelow
set splitright

set tabstop=4
set softtabstop=4
set shiftwidth=4
"set expandtab

"
" Themes
"

set termguicolors
set background=dark

set list
set listchars=tab:>>

" Popup Menu fixes
highlight Pmenu		guibg=black
highlight PmenuSel	guibg=black		guifg=yellow

highlight NonText	guibg=none		guifg=#3e4f70

highlight diffRemoved guibg=none	guifg=red
highlight diffAdd	guibg=none		guifg=green
