call plug#begin('~/.vim/plugins')

Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'sheerun/vim-polyglot'

call plug#end()

scriptencoding utf-8

" Enable sintax highlight
filetype plugin on
syntax on

" Theme
colorscheme dracula
set termguicolors

set encoding=utf-8

" Always shows the vim mode
source ~/.vim/statusline.vim

" Line options
set number
set cursorline

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
set ignorecase
set smartcase

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
let loaded_netrwPlugin = 1
""let g:loaded_netrwPlugin = 1

augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :source ~/.vim/project-explore.vim
augroup END

" Load languages configurations
filetype on
augroup Languages_Settings
  autocmd BufNewFile,BufRead *.js set filetype=javascript
  autocmd BufNewFile,BufRead *.jsx set filetype=javascript
  autocmd BufNewFile,BufRead *.ts set filetype=typescript

  autocmd FileType javascript source ~/.vim/programming/javascript-settings.vim
  autocmd FileType typescript source ~/.vim/programming/typescript-settings.vim
  autocmd FileType python source ~/.vim/programming/python-settings.vim

  autocmd FileType html source ~/.vim/programming/html-settings.vim
  autocmd FileType css source ~/.vim/programming/css-settings.vim
augroup END
