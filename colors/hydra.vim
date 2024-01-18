vim9script

# Hydra Colorscheme for vim
# Url: https://github.com/maxmx03/hydra.nvim
# Maintainer: Max Del Canto <milianordelcanto@gmail.com>
# License: MIT

if exists("g:loaded_hydra")
  finish
endif

g:loaded_hydra = 1

hi clear

if exists('syntax_on')
  syntax reset
endif

set termguicolors
g:colors_name = 'hydra'

if (has('termguicolors') && &termguicolors) || has('gui_running')
  g:terminal_ansi_colors = [
    '#181a1f',
    '#f97583',
    '#85e89d',
    '#e5c07b',
    '#33b1ff',
    '#ff7eb6',
    '#2bbac5',
    '#d4d4d6',
    '#d4d4d6',
    '#f97583',
    '#85e89d',
    '#e5c07b',
    '#33b1ff',
    '#b392f0',
    '#d19a66',
    '#ffffff',
  ]
endif

hi CurSearch guifg=#85e89d guibg=#282c34
hi link TermCursor Cursor

# EDITOR
hi ColorColumn guibg=#181a1f
hi Cursor guifg=#1c1e24 guibg=#33b1ff
hi CursorLine guibg=#282c34 ctermfg=NONE ctermbg=NONE cterm=NONE
hi Directory guifg=#e5c07b gui=bold
hi DiffAdd guifg=#89ca78 gui=NONE cterm=NONE
hi DiffChange guifg=#d19a66 gui=NONE cterm=NONE
hi DiffDelete guifg=#1c1e24 guibg=#ef596f gui=NONE cterm=NONE
hi diffSubname guifg=#b392f0 guibg=NONE gui=NONE cterm=NONE
hi DiffText guifg=#33b1ff gui=reverse cterm=reverse
hi EndOfBuffer guifg=#1c1e24
hi ErrorMsg guifg=#ef596f
hi VertSplit guifg=#e5c07b guibg=#1c1e24 gui=NONE cterm=NONE
hi Folded guifg=#d4d4d6 guibg=#282c34
hi FoldColumn guifg=#d4d4d6 guibg=#181a1f gui=NONE cterm=NONE
hi SignColumn guifg=#d4d4d6 guibg=#1c1e24 gui=NONE cterm=NONE
hi IncSearch guifg=#85e89d guibg=#282c34 gui=bold
hi LineNr guifg=#53565c guibg=#1c1e24
hi CursorLineNr guifg=#d4d4d6 guibg=#282c34 gui=bold cterm=NONE
hi ModeMsg guifg=#f97583 guibg=NONE gui=bold cterm=NONE
hi NonText guifg=#53565c
hi Normal guifg=#d4d4d6 guibg=#1c1e24 gui=NONE cterm=NONE
hi NormalFloat guifg=#d4d4d6 guibg=#282c34 gui=NONE cterm=NONE
hi FloatTitle guifg=#d19a66
hi Pmenu guifg=#d4d4d6 guibg=#181a1f
hi PmenuSel guifg=#33b1ff guibg=#1c1e24
hi PmenuSbar guibg=#282c34
hi PmenuThumb guibg=#33b1ff
hi Question guifg=#61afef guibg=#1c1e24
hi QuickFixLine guifg=#d4d4d6 guibg=#1c1e24
hi Search guibg=#282c34
hi SpecialKey guifg=#f97583
hi SpellBad guifg=#ef596f gui=underline
hi SpellCap guifg=#61afef gui=underline
hi SpellLocal guifg=#61afef gui=underline
hi SpellRare guifg=#e5c07b gui=underline
hi StatusLine guibg=#d4d4d6 guifg=#181a1f
hi StatusLineNC guibg=#d4d4d6 guifg=#181a1f
hi TabLine guifg=#181a1f guibg=#53565c
hi TabLineFill guibg=#d4d4d6 guifg=#181a1f
hi TabLineSel guifg=#ffffff guibg=#282c34
hi Title guifg=#f97583 guibg=NONE gui=NONE cterm=NONE
hi Visual guibg=#282c34
hi WarningMsg guifg=#e5c07b
hi WildMenu guibg=#282c34 gui=NONE cterm=NONE
hi Whitespace guifg=#53565c
hi Wildcolors guibg=#282c34
hi Substitute guifg=#e5c07b gui=reverse

hi! link Terminal Normal
hi! link StatuslineTerm Statusline
hi! link StatuslineTermNC StatuslineNC
hi! link lCursor Cursor
hi! link CursorIM Cursor
hi! link CursorColumn ColorColumn
hi! link LineNrAbove LineNr
hi! link LineNrBelow LineNr
hi! link CursorLineFold FoldColumn
hi! link CursorLineSign SignColumn
hi! link MoreMsg Normal
hi! link VisualNOS Visual
hi! link FloatBorder WinSeparator
hi! link NormalNC Normal
hi! link PmenuKind Pmenu
hi! link PmenuKindSel PmenuSel
hi! link PmenuExtra Pmenu
hi! link PmenuExtraSel PmenuSel
hi! link Conceal Title
hi! link diffRemoved DiffDelete

# SYNTAX
hi Comment guifg=#53565c gui=italic
hi Constant guifg=#ff7eb6
hi String guifg=#b392f0
hi Identifier guifg=#2bbac5 guibg=NONE gui=NONE cterm=NONE
hi Function guifg=#33b1ff
hi Operator guifg=#f97583 guibg=NONE cterm=NONE gui=NONE
hi Keyword guifg=#f97583
hi Type guifg=#e5c07b
hi Structure guifg=#e5c07b
hi Tag guifg=#85e89d
hi Delimiter guifg=#d4d4d6 guibg=NONE gui=NONE cterm=NONE
hi Underlined guifg=#85e89d gui=underline gui=NONE cterm=NONE
hi Ignore guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi Error guifg=#ef596f
hi Todo guifg=#f97583 guibg=NONE gui=NONE cterm=NONE

hi! link Statement Keyword
hi! link Conditional Keyword
hi! link Character String
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant
hi! link Repeat Keyword
hi! link Label Keyword
hi! link Exception Keyword
hi! link PreProc Keyword
hi! link Include Keyword
hi! link Define Keyword
hi! link Macro Keyword
hi! link PreCondit Keyword
hi! link StorageClass Keyword
hi! link Typedef Keyword
hi! link Special Tag
hi! link SpecialChar Constant
hi! link SpecialComment Keyword
hi! link Debug Keyword
