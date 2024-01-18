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

import "../lib/editor.vim"
import "../lib/terminal.vim"
import "../lib/syntax.vim"
