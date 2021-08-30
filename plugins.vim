call plug#begin('~/.vim/plugins')

" Nerdtree
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'


" Theme
Plug 'dracula/vim', { 'as': 'dracula' }


" Editor
Plug 'sheerun/vim-polyglot'
Plug 'kamykn/CCSpellCheck.vim'
Plug 'dense-analysis/ale'
Plug 'airblade/vim-gitgutter'
Plug 'scy/vim-mkdir-on-write'
Plug 'christoomey/vim-system-copy'
Plug 'junegunn/fzf.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'tpope/vim-projectionist'

" Snippets
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'

" Languages
Plug 'carlsonsantana/vim-match-tag'
Plug 'alvan/vim-closetag'

" Autocomplete
Plug 'ludovicchabant/vim-gutentags'
Plug 'artur-shaik/vim-javacomplete2'

" Remove unused imports
Plug 'akhaku/vim-java-unused-imports'

call plug#end()
