local M = {}

---@param opts hydra.highlights.load_modules.opts
M.load = function(opts)
  local hl = opts.hl
  local c = opts.colors
  local config = opts.config

  hl('ColorColumn', { bg = c.base03 }) -- used for columns
  hl('Conceal', { fg = c.blue }) -- placeholder characters
  hl('CurSearch', { fg = c.green, bg = c.base02 }) -- highlight under cursor
  hl('Cursor', { fg = c.base03, bg = c.blue }) -- character under cursor
  hl('lCursor', { link = 'Cursor' }) -- character under the cursor
  hl('CursorIM', { link = 'Cursor' }) -- like cursor, but IME mode
  hl('CursorColumn', { link = 'ColorColumn' }) -- screen-column at the cursor
  hl('CursorLine') -- screen-line at the cursor
  hl('Directory', { fg = c.orange }) -- directory names
  hl('DiffAdd', { fg = c.git.add }) -- Added line
  hl('DiffChange', { fg = c.git.change }) -- Changed line
  hl('DiffDelete', { fg = c.base03, bg = c.git.delete }) -- Deleted line
  hl('DiffText', { fg = c.blue, reverse = true }) -- Changed Text
  hl('EndOfBuffer', { fg = c.base03 }) -- Filler lines (~)
  hl('TermCursor', { link = 'Cursor' }) -- Cursor in a focused terminal
  hl('TermCursorNC', { fg = c.base03, bg = c.base0 }) -- Cursor in an unfocused terminal
  hl('ErrorMsg', { fg = c.diagnostic.error }) -- Error messages on the command line
  hl('WinSeparator', { fg = c.base02, bg = c.base03 }, { transparent = config.transparent }) -- Separators between window splits
  hl('Folded', { fg = c.base0, bg = c.base02 }) -- Line used for closed folds
  hl('FoldColumn', { fg = c.base0, bg = c.base04 }) -- 'foldcolumn'
  hl('SignColumn', { fg = c.base0, bg = c.base03 }, { transparent = config.transparent }) -- Column were signs are displayed
  hl('IncSearch', { fg = c.green, bg = c.base04, bold = true }, { transparent = config.transparent }) -- 'incsearch' highlighting, also for the text replaced
  hl('Substitute', { fg = c.orange, reverse = true }) -- :substitute replacement text highlight
  hl('LineNr', { fg = c.base01, bg = c.base03 }, { transparent = config.transparent }) -- Line number for ":number" and ":#" commands
  hl('LineNrAbove', { link = 'LineNr' }) -- Line number, above the cursor line
  hl('LineNrBelow', { link = 'LineNr' }) -- Line number, below the cursor
  hl('CursorLineNr', { fg = c.white, bg = c.base03 }, { transparent = config.transparent }) -- Like LineNr when 'cursorline' is set
  hl('CursorLineFold', { link = 'FoldColumn' }) -- Like FoldColumn when 'cursorline' is set
  hl('CursorLineSign', { link = 'SignColumn' }) -- Like SignColumn when 'cursorline' is set
  hl('MatchParen', { fg = c.green }) -- Character under the cursor or just before it
  hl('ModeMsg', { link = 'Normal' }) -- 'showmode' message (e.g., "-- INSERT --")
  hl('MsgArea', { link = 'Normal' }) -- 'Area for messages and cmdline'
  hl('MsgSeparator', { link = 'Normal' }) -- Separator for scrolled messages msgsep.
  hl('MoreMsg', { fg = c.blue }) -- more-prompt
  hl('NonText', { fg = c.base01 }) -- '@' at the end of the window
  hl('Normal', { fg = c.base0, bg = c.base03 }, { transparent = config.transparent }) -- Normal text
  hl('NormalFloat', { fg = c.base0, bg = c.base04 }) -- Normal text in floating windows
  hl('FloatBorder', { link = 'WinSeparator' }) -- Border of floating windows.
  hl('FloatTitle', { fg = c.orange }) -- Title of float windows.
  hl('NormalNC', { link = 'Normal' }) -- Normal text in non-current windows.
  hl('Pmenu', { fg = c.base0, bg = c.base04 }, { transparent = config.transparent }) -- Popup menu: Normal item
  hl('PmenuSel', { fg = c.base2 }) -- Popup menu: Selected item
  hl('PmenuKind', { link = 'Pmenu' }) -- Popup menu: Normal item kind
  hl('PmenuKindSel', { link = 'PmenuSel' }) -- Popup menu: Selected item kind
  hl('PmenuExtra', { link = 'Pmenu' }) -- Popup menu: Normal item extra text
  hl('PmenuExtraSel', { link = 'PmenuSel' }) -- Popup menu: Selected item extra text
  hl('PmenuSbar', { bg = c.base04 }) -- Popup menu: Scrollbar
  hl('PmenuThumb', { bg = c.base1 }) -- Popup menu: Thumb of the scrollbar
  hl('Question', { fg = c.diagnostic.info, bg = c.base03 }) -- hit-enter prompt and yes/no questions.
  hl('QuickFixLine', { fg = c.base0, bg = c.base03 }) -- Current quickfix item in the quickfix window
  hl('Search', { bg = c.base02 }) -- Last search pattern highlighting
  hl('SpecialKey', { fg = c.red }) -- Unprintable characters: Text displayed differently from what it really is.
  hl('SpellBad', { fg = c.diagnostic.error, sp = c.diagnostic.error, underline = true }) -- Word that is not recognized by the spellchecker.
  hl('SpellCap', { fg = c.diagnostic.hint, sp = c.diagnostic.hint, underline = true }) -- Word that should start with a capital
  hl('SpellLocal', { fg = c.diagnostic.info, sp = c.diagnostic.info, underline = true }) -- Word that is recognized by the spellchecker as one that is used in another region
  hl('SpellRare', { fg = c.diagnostic.warn, sp = c.diagnostic.warn, underline = true }) -- Word that is recognized by the spellchecker as one that is hardly ever used.
  hl('StatusLine', { fg = c.base1, bg = c.base04 }) -- Status line of current window.
  hl('StatusLineNC', { fg = c.base0, bg = c.base04 }) -- Status lines of not-current windows.
  hl('TabLine', { bg = c.base04 }) -- Tab pages line, not active tab page label.
  hl('TabLineFill', { fg = c.base0, bg = c.base04 }) -- Tab pages line, where there are no labels.
  hl('TabLineSel', { fg = c.base2, bg = c.base03 }) -- Tab pages line, active tab page label.
  hl('Title', { fg = c.orange }) -- Titles for output from ":set all", ":autocmd" etc.
  hl('Visual', { bg = c.base02 }) -- Visual mode selection.
  hl('VisualNOS', { link = 'Visual' }) -- Visual mode selection when vim is "Not Owning the Selection".
  hl('WarningMsg', { fg = c.diagnostic.warn }) -- Warning messages.
  hl('Whitespace', { fg = c.base01 }) -- "nbsp", "space", "tab", "multispace", "lead" and "trail" in 'listchars'.
  hl('WildMenu', { bg = c.base02 }) -- Current match in 'wildmenu' completion.
  hl('WinBar', { link = 'Pmenu' }) -- Window bar of current window.
  hl('WinBarNC', { link = 'WinBar' }) -- Window bar of not-current windows.
end

return M
