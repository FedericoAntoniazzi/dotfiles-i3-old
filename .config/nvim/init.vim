call plug#begin('~/.config/nvim/plugins')

" User Interface
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Auto completion
Plug 'neoclide/coc.nvim',                   {'branch': 'release'}
Plug 'kien/rainbow_parentheses.vim'

Plug 'dart-lang/dart-vim-plugin'
Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}

call plug#end()


source ~/.config/nvim/mappings.vim
source ~/.config/nvim/settings.vim
source ~/.config/nvim/variables.vim
source ~/.config/nvim/autocmds.vim
