if isdirectory('.git')
  "" Location tag files
  let g:gutentags_ctags_tagfile='.git/tags'
  set tags+=tags,.git/tags
endif

set omnifunc=syntaxcomplete#Complete
set complete=.,t
set completeopt=menuone,popup,noinsert,noselect

inoremap <expr> <tab> pumvisible() ? "\<lt>CR>" : "\<lt>tab>"

let g:gutentags_ctags_exclude=['*.md', '*.json', 'www', 'dist', 'plugins', 'platforms', 'node_modules']

" source: https://coderwall.com/p/cl6cpq/vim-ctrl-space-omni-keyword-completion
inoremap <expr> <C-Space> pumvisible() ? "\<lt>C-n>" : "\<lt>C-x>\<lt>C-o>"
imap <C-@> <C-Space>
