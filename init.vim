scriptencoding utf-8

set encoding=utf-8
" Allow edit multiple files
set hidden
" Show line numbers
set number
" Support mouse
set mouse=a

" Show tabs and spaces

set listchars=space:·,tab:>-
set list

" Explorer

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 3
let g:netrw_winsize = 25
let g:netrw_altv = 1
let g:netrw_list_hide = '\.git/$,' . netrw_gitignore#Hide()

augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :let current_file = @%
  autocmd VimEnter * :Explore
  autocmd VimEnter * :if filereadable(current_file)
    autocmd VimEnter * :exec "tabnew ".current_file
    autocmd VimEnter * :echo current_file
  autocmd VimEnter * :endif
augroup END

" Load languages configurations

filetype on
augroup Languages_Settings
  autocmd BufNewFile,BufRead *.js set filetype=javascript
  autocmd BufNewFile,BufRead *.ts set filetype=typescript

  autocmd FileType javascript source ~/.config/nvim/javascript-settings.vim
  autocmd FileType typescript source ~/.config/nvim/typescript-settings.vim
  autocmd FileType python source ~/.config/nvim/python-settings.vim

  autocmd FileType html source ~/.config/nvim/html-settings.vim
  autocmd FileType css source ~/.config/nvim/css-settings.vim
augroup END
