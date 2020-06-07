if isdirectory('.git')
  let current_file = @%
  let g:NERDTreeCustomOpenArgs = {'file':{'where':'t'}}
  let g:NERDTreeShowHidden=1
  set guifont=RobotoMono\ Nerd\ Font\ Mono\ Light\ 12

  let g:NERDTreeIndicatorMapCustom = {
    \ 'Modified'  : '',
    \ 'Staged'    : '',
    \ 'Untracked' : '',
    \ 'Renamed'   : '',
    \ 'Unmerged'  : '',
    \ 'Deleted'   : '',
    \ 'Dirty'     : '',
    \ 'Clean'     : '✔︎',
    \ 'Ignored'   : '',
    \ 'Unknown'   : '?'
    \ }

  NERDTree
  wincmd w
  quit

  " Init shell with virtual enviroment for python projects or set
  " enviroment variables.
  if (isdirectory('env') && isdirectory('env/bin') && filereadable('env/bin/activate'))
    vertical rightbelow terminal ++close ++kill=term bash --init-file env/bin/activate
  elseif (isdirectory('venv') && isdirectory('venv/bin') && filereadable('venv/bin/activate'))
    vertical rightbelow terminal ++close ++kill=term bash --init-file venv/bin/activate
  elseif filereadable('.env')
    vertical rightbelow terminal ++close ++kill=term bash --init-file .env
  else
    vertical rightbelow terminal ++close ++kill=term
  endif

  wincmd w
  if filereadable(current_file)
    exec "tabnew " . current_file
  endif
endif
