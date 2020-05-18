scriptencoding utf-8

" Enable sintax highlight
filetype plugin on
syntax on

set encoding=utf-8

" Always shows the vim mode
set showmode
set laststatus=2

" Show line numbers
set number
set ruler

" Support mouse
set mouse=a

" Allow delete all with backspace
set backspace=indent,eol,start

" Show tabs and spaces

set listchars=tab:>-
set list

" Search
set hlsearch
set incsearch

" Indent
set autoindent
set copyindent

" Avoid write backup and swap files on working directory
let current_directory = getcwd()
let swap_directory = "~/.vim/swap" . current_directory
let backup_directory = "~/.vim/backup" . current_directory
silent exec "! mkdir -p " . swap_directory
silent exec "! mkdir -p " . backup_directory
exec "set directory=" . swap_directory
exec "set backupdir=" . backup_directory

" Explorer
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 3
let g:netrw_winsize = 25
let g:netrw_altv = 1
let g:netrw_list_hide = "\.git/$," . netrw_gitignore#Hide()

augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :source ~/.vim/project-explore.vim
augroup END

" Load languages configurations
filetype on
augroup Languages_Settings
  autocmd BufNewFile,BufRead *.js set filetype=javascript
  autocmd BufNewFile,BufRead *.ts set filetype=typescript

  autocmd FileType javascript source ~/.vim/javascript-settings.vim
  autocmd FileType typescript source ~/.vim/typescript-settings.vim
  autocmd FileType python source ~/.vim/python-settings.vim

  autocmd FileType html source ~/.vim/html-settings.vim
  autocmd FileType css source ~/.vim/css-settings.vim
augroup END
