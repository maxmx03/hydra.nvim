local M = {}

---@param opts hydra.highlights.load_modules.opts
M.load = function(opts)
  local hl = opts.hl
  local c = opts.colors

  hl('GitSignsAdd', { fg = c.git.add }) -- Used for the text of 'add' signs
  hl('GitSignsChange', { fg = c.git.change }) -- Used for the text of 'change' signs
  hl('GitSignsDelete', { fg = c.git.delete }) -- Used for the text of 'delete' signs
end

return M
