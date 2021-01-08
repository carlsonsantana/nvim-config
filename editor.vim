" Indent
set autoindent
set copyindent

" Allow delete all with backspace
set backspace=indent,eol,start

" Fix code
let g:ale_fixers = {
\   '*': ['trim_whitespace', 'remove_trailing_lines'],
\   'python': ['autopep8', 'isort'],
\}
let g:ale_fix_on_save = 1

let g:ale_python_isort_options = '--settings-path ~/.vim/programming/configs/python/.isort.cfg'
let g:ale_python_autopep8_options = '--global-config ~/.vim/programming/configs/python/.pep8'
