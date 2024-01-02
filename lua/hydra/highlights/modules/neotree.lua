local M = {}

---@param opts hydra.highlights.load_modules.opts
M.load = function(opts)
  local hl = opts.hl
  local c = opts.colors

  hl('NeoTreeNormal', { fg = c.base0, bg = c.base04 })
  hl('NeoTreeNormalNC', { link = 'NeoTreeNormal' })
  hl('NeoTreeEndOfBuffer', { fg = c.base04 })
  hl('NeoTreeRootName', { link = 'Directory' })
  hl('NeoTreeFileName', { fg = c.base0 })
  hl('NeoTreeFileNameOpened', { link = 'Directory' })
  hl('NeoTreeFloatBorder', { link = 'WinSeparator' })
  hl('NeoTreeFloatTitle', { link = 'Title' })
  hl('NeoTreeGitAdded', { fg = c.git.add, bg = 'NONE' })
  hl('NeoTreeGitConflict', { fg = c.git.change })
  hl('NeoTreeGitDeleted', { fg = c.git.delete })
  hl('NeoTreeGitIgnored', { fg = c.base01, italic = true })
  hl('NeoTreeGitModified', { fg = c.git.change })
  hl('NeoTreeGitUnstaged', { fg = c.git.change })
  hl('NeoTreeGitUntracked', { fg = c.git.change })
  hl('NeoTreeGitStaged', { fg = c.git.add })
  hl('NeoTreeIndentMarker', { fg = c.base01 })
end

return M
