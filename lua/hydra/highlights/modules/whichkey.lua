local M = {}

---@param opts hydra.highlights.load_modules.opts
M.load = function(opts)
  local hl = opts.hl
  local c = opts.colors

  hl('WhichKey', { fg = c.teal }) -- the key
  hl('WhichKeyGroup', { fg = c.yellow }) -- a group
  hl('WhichKeySeparator', { fg = c.red }) -- the separator between the key and its label
  hl('WhichKeyDesc', { fg = c.base0 }) -- the label of the key
  -- hl('WhichKeyFloat') -- Normal in the popup window
  -- hl('WhichKeyBorder', { link = 'WinSeparator' })
  -- hl('WhichKeyValue') -- used by plugins that provide values
end

return M
