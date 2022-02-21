" Indent
set autoindent
set copyindent

" Maintains selection after indenting
vnoremap > >gv
vnoremap < <gv

" Allow delete all with backspace
set backspace=indent,eol,start

" Copy to clipboard
vmap y ygvcp

" Linters
let g:ale_python_pylint_options = '--rcfile ~/.vim/programming/configs/python/.pylintrc'
let g:ale_python_mypy_options = '--config-file ~/.config/mypy.ini'

" Fix code
let g:ale_fixers = {
\   '*': ['trim_whitespace', 'remove_trailing_lines'],
\   'python': ['autopep8', 'isort'],
\   'php': ['php_cs_fixer'],
\   'java': ['uncrustify'],
\}
let g:ale_fix_on_save = 1

let g:ale_python_isort_options = '--settings-path ~/.vim/programming/configs/python/.isort.cfg'
let g:ale_python_autopep8_options = '--global-config ~/.vim/programming/configs/python/.pep8'
let g:ale_php_cs_fixer_options = '--config=$(readlink -f ~/.vim/programming/configs/php/.php_cs) --allow-risky=yes --cache-file=.git/.php_cs.cache'
let g:ale_c_uncrustify_options = '-c ~/.vim/programming/configs/java/config.cfg'

" Navigate between errors
nmap <silent> <Leader>N <Plug>(ale_previous_wrap)
nmap <silent> <Leader>n <Plug>(ale_next_wrap)

" CTRLSF
let g:ctrlsf_ignore_dir = ['target']
let g:ctrlsf_auto_preview = 1
let g:ctrlsf_auto_focus = {'at': 'done'}

" fzf
let g:fzf_buffers_jump = 1
let g:fzf_action = {'enter': 'tab split'}

" Alternative files
let g:projectionist_heuristics = {
\ '*': {
\   'src/main/java/*.java': {'alternate': 'src/test/java/{}Test.java'},
\   'src/test/java/*Test.java': {'alternate': 'src/main/java/{}.java'},
\   '*.py': {'alternate': 'tests/{}.py'},
\   'index.jsx': {'alternate': 'style.css'},
\   '*.jsx': {'alternate': '{}.css'},
\   '*.component.ts': {'alternate': ['{}.component.html', '{}.component.css', '{}.component.scss', '{}.component.spec.ts']},
\   '*.component.html': {'alternate': ['{}.component.css', '{}.component.scss', '{}.component.spec.ts', '{}.component.ts']},
\   '*.component.css': {'alternate': ['{}.component.spec.ts', '{}.component.ts', '{}.component.html']},
\   '*.component.scss': {'alternate': ['{}.component.spec.ts', '{}.component.ts', '{}.component.html']},
\   '*.component.spec.ts': {'alternate': ['{}.component.ts', '{}.component.html', '{}.component.css', '{}.component.scss']}
\ }
\}
