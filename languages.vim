" Load languages configurations
filetype on
augroup Languages_Settings
  autocmd BufNewFile,BufRead *.js set filetype=javascript
  autocmd BufNewFile,BufRead *.jsx set filetype=javascript
  autocmd BufNewFile,BufRead *.ts set filetype=typescript
augroup END

let g:ale_fix_on_save = 1

" HTML, XML, JSX
let g:closetag_filetypes = 'html,xhtml,jsx,javascript'
