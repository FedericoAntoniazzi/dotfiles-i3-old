"
" Basic Vim mappings
"

" Move between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"
" CoC
"

" Use Ctrl+m to toggle Explorer
nnoremap <silent> <C-m> :CocCommand explorer --toggle<CR>

" Use Tab and Shift+Tab to trigger completion with characters ahead and navigate
inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : <SID>check_back_space() ? "\<Tab>" : coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Use Ctrl+Space to trigger completion
inoremap <silent><expr> <c-space> coc#refresh()

if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Check backspace
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Format current file
nnoremap <silent> <C-f> :call CocAction('format')<CR>
