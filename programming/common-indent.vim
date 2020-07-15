highlight link WhiteSpaceExtra CodeStyleWarning
highlight link WhiteSpaceTrailing CodeStyleWarning
highlight link TabTrailing CodeStyleWarning


call matchadd('WhiteSpaceExtra', '  \+')
call matchadd('WhiteSpaceIndent', '^ \+')
call matchadd('WhiteSpaceTrailing', ' \+$')

call matchadd('TabIndent', '^\t\+')
call matchadd('TabTrailing', '\t\+$')
