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
Plug 'dense-analysis/ale'
Plug 'airblade/vim-gitgutter'
Plug 'scy/vim-mkdir-on-write'

" Languages
Plug 'carlsonsantana/vim-match-tag'
Plug 'alvan/vim-closetag'

" Autocomplete
Plug 'ludovicchabant/vim-gutentags'
Plug 'yuratomo/java-api-complete'
Plug 'yuratomo/java-api-javax'
Plug 'yuratomo/java-api-junit'

" Remove unused imports
Plug 'akhaku/vim-java-unused-imports'

call plug#end()
