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
set expandtab

"
" Themes
"

set termguicolors
set background=dark
let &t_8f = "\e[38;2;%lu;%lu;%lum"
let &t_8b = "\e[48;2;%lu;%lu;%lum"

" Popup Menu fixes
highlight Pmenu     guibg=black
highlight PmenuSel  guibg=black      guifg=yellow

"
" Rainbow parentheses
"

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
