set ttyfast
set lazyredraw
set ttimeoutlen=0
set nocursorcolumn
set nocursorline

augroup BgHighlight
  autocmd!
  autocmd WinEnter * set cursorline
  autocmd WinLeave * set nocursorline
augroup END
