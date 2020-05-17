if isdirectory(".git")
  let current_file = @%
  Explore
  botright terminal
  wincmd k
  if filereadable(current_file)
    exec "tabnew " . current_file
    echo current_file
  endif
endif
