highlight WhiteSpaceExtra term=underline cterm=underline ctermfg=DarkYellow
call matchadd('WhiteSpaceExtra', '  \+')
highlight WhiteSpaceIndent term=strikethrough cterm=strikethrough ctermfg=Blue
call matchadd('WhiteSpaceIndent', '^ \+')
highlight WhiteSpaceTrailing term=underline cterm=underline ctermfg=DarkYellow
call matchadd('WhiteSpaceTrailing', ' \+$')


highlight TabIndent term=strikethrough cterm=strikethrough ctermfg=Blue
call matchadd('TabIndent', '^\t\+')
highlight TabTrailing term=underline cterm=underline ctermfg=DarkYellow
call matchadd('TabTrailing', '\t\+$')
