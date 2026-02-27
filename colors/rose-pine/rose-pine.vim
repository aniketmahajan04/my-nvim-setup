
set bg=dark
hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'rose_pine_moon_custom'

" =====================
" Core UI
" =====================

highlight Normal        guifg=#e0def4 guibg=#232136
highlight NormalFloat   guifg=#e0def4 guibg=#2a273f

highlight Conceal       guibg=#2a273f

highlight Comment       guifg=#6e6a86
highlight TSComment     guifg=#6e6a86

highlight LineNr        guifg=#6e6a86 guibg=#232136
highlight LineNrAbove   guifg=#6e6a86 guibg=#232136
highlight LineNrBelow   guifg=#6e6a86 guibg=#232136
highlight CursorLineNr  guifg=#c4a7e7 guibg=#232136

highlight VertSplit     guifg=#393552
highlight WinSeparator  guifg=#393552 guibg=#232136

highlight StatusLine    guifg=#e0def4 guibg=#2a273f
highlight TabLine       guifg=#6e6a86 guibg=#2a273f
highlight TabLineFill   guifg=#6e6a86 guibg=#2a273f
highlight TabLineSel    guifg=#e0def4 guibg=#44415a

" =====================
" Syntax
" =====================

highlight Identifier    guifg=#e0def4
highlight Function      guifg=#c4a7e7

highlight Statement     guifg=#eb6f92
highlight Keyword       guifg=#eb6f92
highlight Operator      guifg=#eb6f92

highlight Constant      guifg=#9ccfd8
highlight Number        guifg=#9ccfd8
highlight Boolean       guifg=#9ccfd8
highlight Float         guifg=#9ccfd8

highlight String        guifg=#f6c177
highlight Character     guifg=#f6c177

highlight Type          guifg=#9ccfd8
highlight Structure     guifg=#9ccfd8
highlight PreProc       guifg=#9ccfd8

highlight Special       guifg=#c4a7e7
highlight SpecialChar   guifg=#c4a7e7

highlight Directory     guifg=#c4a7e7
highlight Title         guifg=#c4a7e7

" =====================
" UI States
" =====================

highlight Visual        guibg=#44415a
highlight MatchParen    guifg=#c4a7e7 guibg=#393552

highlight Search        guifg=#ffffff guibg=#3e8fb0
highlight Substitute   guifg=#232136 guibg=#c4a7e7

highlight Pmenu         guifg=#e0def4 guibg=#2a273f
highlight PmenuSel      guifg=#232136 guibg=#c4a7e7
highlight PmenuSbar     guibg=#393552
highlight PmenuThumb    guibg=#6e6a86

highlight QuickFixLine  guibg=#393552
highlight Question      guifg=#c4a7e7

highlight NonText       guifg=#393552
highlight SpecialKey    guifg=#393552

" =====================
" Diagnostics
" =====================

highlight Error         guifg=#eb6f92 gui=undercurl
highlight ErrorMsg      guifg=#eb6f92
highlight WarningMsg    guifg=#f6c177
highlight Todo          guifg=#f6c177 guibg=#2a273f

highlight Underlined    gui=undercurl guisp=#c4a7e7

" =====================
" Diff
" =====================

highlight DiffAdd       guifg=#e0def4 guibg=#2c3b3b
highlight DiffChange    guifg=#e0def4 guibg=#2b3557
highlight DiffDelete    guifg=#eb6f92 guibg=#3a1f2b
highlight DiffText      guifg=#e0def4 guibg=#44415a

" =====================
" Markdown
" =====================

highlight @markup.link.label.markdown_inline guifg=#c4a7e7 gui=underline
