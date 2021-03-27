set tabstop=4
set shiftwidth=4
set expandtab

set colorcolumn=81

source ~/.vim/programming/whitespace-indent.vim

setlocal omnifunc=javacomplete#Complete

if filereadable('pom.xml')
  if filereadable('.env')
    setl makeprg=source\ .env\ &&\ mvn\ package
  else
    setl makeprg=mvn\ clean\ package
  endif
endif

" Highlight all unused imports
highlight link unusedimport WarningMsg

if (!exists("g:JavaComplete_ImportSortType")) || (g:JavaComplete_ImportSortType == 'jarName')
  let g:JavaComplete_ImportSortType = 'packageName'
  let g:JavaComplete_ImportOrder = ['java.', 'javax.', 'junit.', '*']
endif

augroup JavaImports
  autocmd!

  " Highlight all unused imports
  autocmd BufEnter *.java :UnusedImports
  " Resolve imports
  autocmd BufWritePre,FileWritePre *.java :exec 'UnusedImportsRemove' | exec 'JCimportsAddMissing' | exec 'JCimportsSort'
augroup END
