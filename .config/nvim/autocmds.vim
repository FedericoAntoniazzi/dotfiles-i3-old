" Auto format code and add missing imports on save in golang files
autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')
