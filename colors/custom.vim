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

"hi clear
"if exists('syntax_on')
"  syntax reset
"endif
"
"let g:colors_name = 'github_dark_default_custom'

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

"highlight Normal        guifg=#58a6ff guibg=#0d1117
"highlight NormalFloat   guifg=#c9d1d9 guibg=#161b22
"highlight Comment       guifg=#8b949e
"highlight TSComment     guifg=#8b949e
"highlight Conceal       guibg=#161b22
"highlight Constant      guifg=#79c0ff
"highlight DiffAdd       guifg=#c9d1d9 guibg=#12261e
"highlight DiffChange    guifg=#c9d1d9 guibg=#1c2030
"highlight DiffDelete    guifg=#f85149 guibg=#2d1b1b
"highlight DiffText      guifg=#c9d1d9 guibg=#2f363d
"highlight Directory     guifg=#58a6ff
"highlight Error         guifg=#f85149 gui=undercurl
"highlight ErrorMsg      guifg=#f85149
"highlight Function      guifg=#d2a8ff
"highlight Identifier    guifg=#c9d1d9
"highlight LineNr        guifg=#6e7681 guibg=#0d1117
"highlight LineNrAbove   guifg=#6e7681 guibg=#0d1117
"highlight LineNrBelow   guifg=#6e7681 guibg=#0d1117
"highlight MatchParen    guibg=#2f363d guifg=#58a6ff
"highlight NonText       guifg=#484f58
"highlight Operator      guifg=#ff7b72
"highlight Pmenu         guifg=#c9d1d9 guibg=#161b22
"highlight PmenuSel      guifg=#ffffff guibg=#2f363d
"highlight PmenuSbar     guibg=#21262d
"highlight PmenuThumb    guibg=#484f58
"highlight PreProc       guifg=#79c0ff
"highlight Question      guifg=#58a6ff
"highlight QuickFixLine  guibg=#21262d
"highlight Search        guibg=#264466 guifg=#ffffff
"highlight Special       guifg=#a5d6ff
"highlight SpecialChar   guifg=#58a6ff
"highlight SpecialKey    guifg=#484f58
"highlight Statement     guifg=#ff7b72
"highlight StatusLine    guifg=#c9d1d9 guibg=#161b22
"highlight String        guifg=#a5d6ff
"highlight Structure     guifg=#79c0ff
"highlight Substitute    guifg=#0d1117 guibg=#58a6ff
"highlight TabLine       guifg=#8b949e guibg=#161b22
"highlight TabLineFill   guifg=#8b949e guibg=#161b22
"highlight TabLineSel    guifg=#c9d1d9 guibg=#2f363d
"highlight Title         guifg=#58a6ff term=none cterm=none
"highlight Todo          guifg=#f2cc60 guibg=#161b22
"highlight Type          guifg=#79c0ff
"highlight Underlined    gui=undercurl guisp=#58a6ff
"highlight VertSplit     guifg=#30363d
"highlight Visual        guibg=#2f363d
"highlight WarningMsg    guifg=#f2cc60
"highlight Float         guifg=#a5d6ff
"highlight Number        guifg=#79c0ff
"highlight Boolean       guifg=#79c0ff
"highlight WinSeparator  guibg=#0d1117 guifg=#30363d

" Markdown link label (fix)
"highlight @markup.link.label.markdown_inline guifg=#58a6ff gui=underline

" =============================================================================
" Rose-pine Moon Custom Theme
" =============================================================================

"set background=dark
"highlight clear
"if exists('syntax_on')
 " syntax reset
"endif

"let g:colors_name = 'rose_pine_moon_custom'

" Palette Definition Reference:
" base: #232136 | surface: #2a273f | overlay: #393552
" muted: #6e6a86 | subtle: #908caa  | text: #e0def4
" love: #eb6f92  | gold: #f6c177    | rose: #ea9a97
" pine: #3e8fb0  | foam: #9ccfd8    | iris: #c4a7e7
" highlight_low: #2a283e | highlight_med: #44415a | highlight_high: #56526e

" =====================
" Core UI
" =====================
"highlight Normal          guifg=#e0def4 guibg=#232136
"highlight NormalFloat     guifg=#e0def4 guibg=#2a273f
"highlight ColorColumn     guibg=#2a273f
"highlight CursorLine      guibg=#2a283e
"highlight CursorColumn    guibg=#2a283e

"highlight Comment         guifg=#6e6a86 gui=italic
"highlight NonText         guifg=#393552
"highlight SpecialKey      guifg=#393552
"highlight Conceal         guibg=NONE    guifg=#908caa

"highlight LineNr          guifg=#6e6a86 guibg=#232136
"highlight CursorLineNr    guifg=#e0def4 guibg=#232136
"highlight VertSplit       guifg=#393552 guibg=NONE
"highlight WinSeparator    guifg=#393552 guibg=NONE

"highlight StatusLine      guifg=#908caa guibg=#2a273f gui=NONE
"highlight StatusLineNC    guifg=#6e6a86 guibg=#232136 gui=NONE

" =====================
" Syntax
" =====================
"highlight Constant        guifg=#ea9a97
"highlight String          guifg=#f6c177
"highlight Character       guifg=#f6c177
"highlight Number          guifg=#ea9a97
"highlight Boolean         guifg=#ea9a97
"highlight Float           guifg=#ea9a97

"highlight Identifier      guifg=#e0def4 gui=NONE
"highlight Function        guifg=#ea9a97
"highlight Statement       guifg=#3e8fb0
"highlight Conditional     guifg=#3e8fb0
"highlight Repeat          guifg=#3e8fb0
"highlight Label           guifg=#3e8fb0
"highlight Operator        guifg=#908caa
"highlight Keyword         guifg=#3e8fb0
"highlight Exception       guifg=#3e8fb0

"highlight PreProc         guifg=#9ccfd8
"highlight Include         guifg=#9ccfd8
"highlight Define          guifg=#9ccfd8
"highlight Macro           guifg=#e0def4
"highlight PreCondit       guifg=#9ccfd8

"highlight Type            guifg=#9ccfd8
"highlight StorageClass    guifg=#9ccfd8
"highlight Structure       guifg=#e0def4
"highlight Typedef         guifg=#9ccfd8

"highlight Special         guifg=#ea9a97
"highlight SpecialChar     guifg=#ea9a97
"highlight Tag             guifg=#ea9a97
"highlight Delimiter       guifg=#908caa
"highlight SpecialComment  guifg=#c4a7e7
"highlight Debug           guifg=#ea9a97

" =====================
" UI States
" =====================
"highlight Visual          guibg=#44415a
"highlight Search          guibg=#56526e guifg=#e0def4
"highlight IncSearch       guibg=#ea9a97 guifg=#232136
"highlight MatchParen      guifg=#e0def4 guibg=#393552 gui=bold

"highlight Pmenu           guifg=#908caa guibg=#2a273f
"highlight PmenuSel        guifg=#e0def4 guibg=#44415a
"highlight PmenuSbar       guibg=#393552
"highlight PmenuThumb      guibg=#6e6a86

" =====================
" Diagnostics & Git
" =====================
"highlight Error           guifg=#eb6f92 guibg=NONE gui=bold,undercurl
"highlight ErrorMsg        guifg=#eb6f92 gui=bold
"highlight WarningMsg      guifg=#f6c177
"highlight ModeMsg         guifg=#e0def4
"highlight Todo            guifg=#c4a7e7 guibg=NONE gui=bold

"highlight DiffAdd         guibg=#2a283e guifg=#3e8fb0
"highlight DiffChange      guibg=#2a283e guifg=#908caa
"highlight DiffDelete      guibg=#2a283e guifg=#eb6f92
"highlight DiffText        guibg=#44415a guifg=#e0def4

" =====================
" Treesitter / Modern Links
" =====================
"highlight link @variable Identifier
"highlight link @function Function
"highlight link @keyword Keyword
"highlight link @operator Operator
"highlight link @type Type
"highlight link @comment Comment
"highlight link @string String
"highlight link @constant Constant
"highlight link @markup.link.label.markdown_inline Label
