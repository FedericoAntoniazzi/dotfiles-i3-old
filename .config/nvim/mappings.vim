"
" Basic Vim mappings
"

" Move between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Move between buffers
nnoremap <Tab> :bnext<CR>
nnoremap <S-TAB> :bprev<CR>

"
" CoC
"

" Use Ctrl+m to toggle Explorer
nmap <silent> <leader>m :CocCommand explorer --preset floating<CR>


" Use Tab and Shift+Tab to trigger completion with characters ahead and navigate
inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : <SID>check_back_space() ? "\<Tab>" : coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

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

" Organise imports
nnoremap <silent> <C-o> :call CocAction('runCommand', 'editor.action.organizeImport')<CR>

" GoTo Code Navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Show documentation
nnoremap <silent> <leader>d :call <SID>show_documentation()<CR>
" Symbol renaming
nmap <leader>rn <Plug>(coc-rename)

