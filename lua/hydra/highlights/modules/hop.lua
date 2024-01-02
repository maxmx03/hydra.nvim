local M = {}

---@param opts hydra.highlights.load_modules.opts
M.load = function(opts)
  local hl = opts.hl
  local c = opts.colors
  local darken = opts.color.darken

  hl('HopNextKey', { fg = c.pink })
  hl('HopNextKey1', { fg = c.blue })
  hl('HopNextKey2', { fg = darken(c.blue, 20) })
  hl('HopUnmatched', { fg = c.base0 })
end

return M
