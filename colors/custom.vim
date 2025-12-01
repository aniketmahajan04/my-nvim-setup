" took many of these colors from github.com/CosecSecCot/cosec-twilight.nvim.

"set bg=dark
"hi clear
"if exists('syntax_on')
"  syntax reset
"endif
"
"let g:colors_name = 'custom'

" Define highlight groups
"highlight Normal        guifg=#FEFEFE guibg=#202020
"highlight NormalFloat   guifg=#FEFEFE guibg=#202020
"highlight Comment       guifg=#6f7b68
"highlight TSComment       guifg=#6f7b68
"highlight Conceal       guibg=#262626
"highlight Constant      guifg=#cccccc
"highlight CursorColumn
"highlight CursorLine
"highlight DiffAdd       guifg=#FFFEDB guibg=#2B3328
"highlight DiffChange    guifg=#FFFEDB guibg=#262636
"highlight DiffDelete    guifg=#C34143 guibg=#42242B
"highlight DiffText      guifg=#FFFEDB guibg=#49443C
"highlight Directory     guifg=#C1C88D
"highlight Error         guifg=#C34143 gui=undercurl
"highlight ErrorMsg      guifg=#FFFEDB
"highlight FoldColumn
"highlight Folded
"highlight Function      guifg=#AA9AAC
"highlight Identifier    guifg=#8B9698
"highlight LineNr        guifg=#474A4D -- leaved
"highlight LineNrAbove   guifg=#888888 guibg=#222222
"highlight LineNrBelow   guifg=#888888 guibg=#222222
"highlight LineNr        guifg=#d6d2c8
"highlight MatchParen    guifg=#FFFEDB
"highlight NonText       guifg=#303030
"highlight Operator      guifg=#DEBF7C
"highlight Pmenu         guifg=#918988 guibg=#303030
"highlight PmenuSbar     guifg=#918988 guibg=#262626
"highlight PmenuSel      guifg=#BFBBBA guibg=#303030
"highlight PmenuThumb    guifg=#918988 guibg=#262626 gui=reverse
"highlight PreProc       guifg=#8B9698
"highlight Question      guifg=#9b8d7f
"highlight QuickFixLine  guibg=#303030
"highlight Search        guibg=#5F5958
""highlight SignColumn
"highlight Special       guifg=#cccccc
"highlight SpecialChar   guifg=#C1C88D
"highlight SpecialKey    guifg=#676767
"highlight Statement     guifg=#cccccc
"highlight StatusLine    guifg=#FFFEDB guibg=#34383C
"highlight String        guifg=#A2A970
"highlight Structure     guifg=#AA9AAC
"highlight Substitute    guifg=#1A1A1A guibg=#C1C88D
"highlight TabLine       guifg=#A09998 guibg=#212121
"highlight TabLineFill   guifg=#A09998 guibg=#212121
"highlight TabLineSel    guifg=#A09998 guibg=#40474F
"highlight Title         guifg=#FFFEDB term=none cterm=none
"highlight Todo          guifg=#8B9698
"highlight Type          guifg=#E3D896
"highlight Underlined    gui=undercurl
"highlight VertSplit     guifg=#303030
"highlight Visual        guibg=#454545
"highlight WarningMsg    guifg=#FFFEDB
"highlight Float         guifg=#6f7b68
"highlight Number         guifg=#6f7b68
"highlight Boolean         guifg=#6f7b68
"highlight WinSeparator         guibg=#111111 guifg=#888888
"
"highlight @markup.link.label.markdown_inline cterm=NONE

" --------------------------------------------------
" Custom GitHub Dark Default inspired theme
" Based on github.com/CosecSecCot/cosec-twilight.nvim but recolored

set bg=dark
hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'github_dark_default_custom'

 "=====================
 "Core colors (GitHub Dark Default)
 "=====================
 "bg:        #0d1117
 "bg_alt:    #161b22
 "fg:        #c9d1d9
 "comment:   #8b949e
 "accent:    #58a6ff
 "keyword:   #ff7b72
 "string:    #a5d6ff
 "func:      #d2a8ff
 "type:      #79c0ff
 "warn:      #f2cc60
 "error:     #f85149
 "line:      #30363d
 "selection: #2f363d
 "
 "=====================
 "Highlight groups
 "=====================

highlight Normal        guifg=#58a6ff guibg=#0d1117
highlight NormalFloat   guifg=#c9d1d9 guibg=#161b22
highlight Comment       guifg=#8b949e
highlight TSComment     guifg=#8b949e
highlight Conceal       guibg=#161b22
highlight Constant      guifg=#79c0ff
highlight DiffAdd       guifg=#c9d1d9 guibg=#12261e
highlight DiffChange    guifg=#c9d1d9 guibg=#1c2030
highlight DiffDelete    guifg=#f85149 guibg=#2d1b1b
highlight DiffText      guifg=#c9d1d9 guibg=#2f363d
highlight Directory     guifg=#58a6ff
highlight Error         guifg=#f85149 gui=undercurl
highlight ErrorMsg      guifg=#f85149
highlight Function      guifg=#d2a8ff
highlight Identifier    guifg=#c9d1d9
highlight LineNr        guifg=#6e7681 guibg=#0d1117
highlight LineNrAbove   guifg=#6e7681 guibg=#0d1117
highlight LineNrBelow   guifg=#6e7681 guibg=#0d1117
highlight MatchParen    guibg=#2f363d guifg=#58a6ff
highlight NonText       guifg=#484f58
highlight Operator      guifg=#ff7b72
highlight Pmenu         guifg=#c9d1d9 guibg=#161b22
highlight PmenuSel      guifg=#ffffff guibg=#2f363d
highlight PmenuSbar     guibg=#21262d
highlight PmenuThumb    guibg=#484f58
highlight PreProc       guifg=#79c0ff
highlight Question      guifg=#58a6ff
highlight QuickFixLine  guibg=#21262d
highlight Search        guibg=#264466 guifg=#ffffff
highlight Special       guifg=#a5d6ff
highlight SpecialChar   guifg=#58a6ff
highlight SpecialKey    guifg=#484f58
highlight Statement     guifg=#ff7b72
highlight StatusLine    guifg=#c9d1d9 guibg=#161b22
highlight String        guifg=#a5d6ff
highlight Structure     guifg=#79c0ff
highlight Substitute    guifg=#0d1117 guibg=#58a6ff
highlight TabLine       guifg=#8b949e guibg=#161b22
highlight TabLineFill   guifg=#8b949e guibg=#161b22
highlight TabLineSel    guifg=#c9d1d9 guibg=#2f363d
highlight Title         guifg=#58a6ff term=none cterm=none
highlight Todo          guifg=#f2cc60 guibg=#161b22
highlight Type          guifg=#79c0ff
highlight Underlined    gui=undercurl guisp=#58a6ff
highlight VertSplit     guifg=#30363d
highlight Visual        guibg=#2f363d
highlight WarningMsg    guifg=#f2cc60
highlight Float         guifg=#a5d6ff
highlight Number        guifg=#79c0ff
highlight Boolean       guifg=#79c0ff
highlight WinSeparator  guibg=#0d1117 guifg=#30363d

" Markdown link label (fix)
highlight @markup.link.label.markdown_inline guifg=#58a6ff gui=underline

