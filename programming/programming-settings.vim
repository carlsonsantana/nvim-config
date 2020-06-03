highlight WhiteSpaceExtra term=underline cterm=underline ctermfg=DarkYellow
call matchadd('WhiteSpaceExtra', '  \+')
highlight WhiteSpaceIndent term=strikethrough cterm=strikethrough ctermfg=DarkBlue
call matchadd('WhiteSpaceIndent', '^ \+')
highlight WhiteSpaceExtra term=underline cterm=underline ctermfg=DarkYellow
call matchadd('WhiteSpaceExtra', ' \+$')
