" Indent
set autoindent
set copyindent

" Allow delete all with backspace
set backspace=indent,eol,start

" Fix code
let g:ale_fixers = {
\   '*': ['trim_whitespace', 'remove_trailing_lines'],
\}
let g:ale_fix_on_save = 1
