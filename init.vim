set nocompatible

source ~/.vim/plugins.vim

scriptencoding utf-8

" Enable sintax highlight
filetype plugin on
syntax on

" Keyboard speed
nnoremap ; :

set whichwrap+=<,>,h,l

map j gj
map k gk

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

" Support suggestion for VIM commands
set wildmenu
set wildmode=list:longest,full

" Show tabs and spaces
set listchars=tab:>-
set list

set showbreak=···\ 

" Search
set hlsearch
set incsearch
set ignorecase
set smartcase

" Visual improvement
set scrolloff=5

" Avoid write backup and swap files on working directory
let current_directory = getcwd()
let swap_directory = "~/.vim/swap" . current_directory
let backup_directory = "~/.vim/backup" . current_directory
silent exec "! mkdir -p " . swap_directory
silent exec "! mkdir -p " . backup_directory
exec "set directory=" . swap_directory
exec "set backupdir=" . backup_directory

set nolazyredraw

" Explorer
let loaded_netrwPlugin = 1
""let g:loaded_netrwPlugin = 1

augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :source ~/.vim/project-explore.vim
augroup END

source ~/.vim/autocomplete.vim
source ~/.vim/languages.vim
source ~/.vim/templates.vim
source ~/.vim/editor.vim
source ~/.vim/snippets.vim
