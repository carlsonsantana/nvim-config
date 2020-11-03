set tabstop=4
set shiftwidth=4
set expandtab

set colorcolumn=81

source ~/.vim/programming/whitespace-indent.vim

setl omnifunc=javaapi#complete

if filereadable('pom.xml')
  if filereadable('.env')
    setl makeprg=source\ .env\ &&\ mvn\ package
  else
    setl makeprg=mvn\ package
  endif
endif
