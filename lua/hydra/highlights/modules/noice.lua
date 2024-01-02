local M = {}

---@param opts hydra.highlights.load_modules.opts
M.load = function(opts)
  local hl = opts.hl
  local darken = opts.color.darken
  local c = opts.colors

  hl('NoiceFormatProgressTodo', { fg = c.diagnostic.ok, bg = darken(c.diagnostic.ok, 50) })
  hl('NoiceFormatProgressDone', { fg = c.diagnostic.ok, reverse = true })
  hl('NoiceLspProgressSpinner', { fg = c.diagnostic.ok })
  hl('NoiceLspProgressClient', { fg = c.green })
  hl('NoiceLspProgressTitle', { link = 'Title' })
end

return M
