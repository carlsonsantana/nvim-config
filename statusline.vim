set laststatus=2

function ChangeStatusLineMode()
  let l:mode = mode()
  if l:mode ==# 'i'
    highlight statusline cterm=bold ctermbg=Green ctermfg=Black
    return 'INSERT'
  elseif l:mode ==# 'R'
    highlight statusline cterm=bold ctermbg=DarkYellow ctermfg=Black
    return 'REPLACE'
  elseif l:mode ==# 'n'
    highlight statusline cterm=bold ctermbg=White ctermfg=Black
    return 'NORMAL'
  elseif l:mode ==# 'v'
    highlight statusline cterm=bold ctermbg=LightBlue ctermfg=Black
    return 'VISUAL'
  elseif l:mode ==# 'V'
    highlight statusline cterm=bold ctermbg=Blue ctermfg=Black
    return 'VISUAL LINE'
  elseif l:mode ==# "\<C-V>"
    highlight statusline cterm=bold ctermbg=Yellow ctermfg=Black
    return 'VISUAL BLOCK'
  elseif l:mode ==# 't'
    return 'TERMINAL'
  endif
  return l:mode
endfunction

function! LinterStatus() abort
  let l:counts = ale#statusline#Count(bufnr(''))

  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors

  return l:counts.total == 0 ? 'OK' : printf(
  \   '%dW %dE',
  \   all_non_errors,
  \   all_errors
  \)
endfunction

set statusline=\ %{ChangeStatusLineMode()}\ ⟩
set statusline+=\ %f
set statusline+=\ %m
set statusline+=\ %{gutentags#statusline('[',']')}
set statusline+=%=
set statusline+=⟨\ %y\ 
set statusline+=⟨\ %n\ 
set statusline+=⟨\ %v:%l/%L\ 
set statusline+=⟨\ %p%%\ 
set statusline+=⟨\ %{LinterStatus()}\ 
