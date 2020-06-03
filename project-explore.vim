if isdirectory('.git')
  let current_file = @%
  Explore

  " Init shell with virtual enviroment for python projects or set
  " enviroment variables.
  if (isdirectory('env') && isdirectory('env/bin') && filereadable('env/bin/activate'))
    vertical rightbelow terminal ++kill=term bash --init-file env/bin/activate
  elseif (isdirectory('venv') && isdirectory('venv/bin') && filereadable('venv/bin/activate'))
    vertical rightbelow terminal ++kill=term bash --init-file venv/bin/activate
  elseif filereadable('.env')
    vertical rightbelow terminal ++kill=term bash --init-file .env
  else
    vertical rightbelow terminal ++kill=term
  endif

  wincmd h
  if filereadable(current_file)
    exec "tabnew " . current_file
    echo current_file
  endif
endif
