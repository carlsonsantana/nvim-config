call plug#begin('~/.vim/plugins')

Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'sheerun/vim-polyglot'
Plug 'ludovicchabant/vim-gutentags'
Plug 'airblade/vim-gitgutter'
Plug 'dense-analysis/ale'

" HTML, XML, JSX
Plug 'carlsonsantana/vim-match-tag'
Plug 'alvan/vim-closetag'
let g:closetag_filetypes = 'html,xhtml,jsx,javascript'

call plug#end()
