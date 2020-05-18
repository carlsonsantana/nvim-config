if isdirectory('.git')
  let current_file = @%
  Explore

  " Init shell with virtual enviroment for python projects or set
  " enviroment variables.
  if (isdirectory('env') && isdirectory('env/bin') && filereadable('env/bin/activate'))
    botright terminal bash --init-file env/bin/activate
  elseif (isdirectory('venv') && isdirectory('venv/bin') && filereadable('venv/bin/activate'))
    botright terminal bash --init-file venv/bin/activate
  elseif filereadable('.env')
    botright terminal bash --init-file .env
  else
    botright terminal
  endif

  wincmd k
  if filereadable(current_file)
    exec "tabnew " . current_file
    echo current_file
  endif
endif
