local M = {}

---@param opts hydra.highlights.load_modules.opts
M.load = function(opts)
  local darken = opts.color.darken
  local hl = opts.hl
  local c = opts.colors

  hl('IblIndent', { fg = darken(c.pink, 20), nocombine = true })
  hl('IblScope', { fg = c.pink, nocombine = true })
end

return M
