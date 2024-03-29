local M = {}

---@param opts hydra.highlights.load_modules.opts
M.load = function(opts)
  local hl = opts.hl
  local c = opts.colors
  local blend = opts.color.blend
  local alpha = 0.2

  hl('DiagnosticError', { fg = c.diagnostic.error }) -- Used as the base highlight group.(except Underline)
  hl('DiagnosticWarn', { fg = c.diagnostic.warn }) --Used as the base highlight group.(except Underline)
  hl('DiagnosticInfo', { fg = c.diagnostic.info }) -- Used as the base highlight group.(except Underline)
  hl('DiagnosticHint', { fg = c.diagnostic.hint }) -- Used as the base highlight group.(except Underline)
  hl('DiagnosticOk', { fg = c.diagnostic.ok }) -- Used as the base highlight group.(except Underline)
  hl('DiagnosticVirtualTextError', { fg = c.diagnostic.error, bg = blend(c.diagnostic.error, c.base03, alpha) }) -- Used for "Error" diagnostic virtual text.
  hl('DiagnosticVirtualTextWarn', { fg = c.diagnostic.warn, bg = blend(c.diagnostic.warn, c.base03, alpha) }) -- Used for "Warn" diagnostic virtual text.
  hl('DiagnosticVirtualTextInfo', { fg = c.diagnostic.info, bg = blend(c.diagnostic.info, c.base03, alpha) }) -- Used for "Info" diagnostic virtual text.
  hl('DiagnosticVirtualTextHint', { fg = c.diagnostic.hint, bg = blend(c.diagnostic.hint, c.base03, alpha) }) -- Used for "Hint" diagnostic virtual text.
  hl('DiagnosticVirtualTextOk', { fg = c.diagnostic.ok, bg = blend(c.diagnostic.ok, c.base03, alpha) }) -- Used for "Ok" diagnostic virtual text.
  hl('DiagnosticUnderlineError', { fg = c.diagnostic.error, sp = c.diagnostic.error }) --Used to underline "Error" diagnostics.
  hl('DiagnosticUnderlineWarn', { fg = c.diagnostic.warn, sp = c.diagnostic.warn }) -- Used to underline "Warn" diagnostics.
  hl('DiagnosticUnderlineInfo', { fg = c.diagnostic.info, sp = c.diagnostic.info }) -- Used to underline "Info" diagnostics.
  hl('DiagnosticUnderlineHint', { fg = c.diagnostic.hint, sp = c.diagnostic.hint }) -- Used to underline "Hint" diagnostics.
  hl('DiagnosticUnderlineOk', { fg = c.diagnostic.ok, sp = c.diagnostic.ok }) -- Used to underline "Ok" diagnostics.
  -- hl('DiagnosticFloatingError') -- Used to color "Error" diagnostic messages in diagnostics float.
  -- hl('DiagnosticFloatingWarn') -- Used to color "Warn" diagnostic messages in diagnostics float.
  -- hl('DiagnosticFloatingInfo') -- Used to color "Info" diagnostic messages in diagnostics float.
  -- hl('DiagnosticFloatingHint') -- Used to color "Hint" diagnostic messages in diagnostics float.
  -- hl('DiagnosticFloatingOk') -- Used to color "Ok" diagnostic messages in diagnostics float.
  -- hl('DiagnosticSignError') -- Used for "Error" signs in sign column.
  -- hl('DiagnosticSignWarn') -- Used for "Warn" signs in sign column.
  -- hl('DiagnosticSignInfo') -- Used for "Info" signs in sign column.
  -- hl('DiagnosticSignHint') -- Used for "Hint" signs in sign column.
  -- hl('DiagnosticSignOk') -- Used for "Ok" signs in sign column.
  -- hl('DiagnosticDeprecated') -- Used for deprecated or obsolete code.
  -- hl('DiagnosticUnnecessary') -- Used for unnecessary or unused code.
end

return M
