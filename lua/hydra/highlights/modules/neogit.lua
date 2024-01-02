local M = {}

---@param opts hydra.highlights.load_modules.opts
M.load = function(opts)
  local hl = opts.hl
  local c = opts.colors
  local darken = opts.color.darken
  local percentage = 40

  hl('NeogitCursorLine', { link = 'CursorLine' })
  hl('NeogitBranch', { fg = c.red })
  hl('NeogitRemote', { fg = c.pink })
  hl('NeogitHunkHeader', { fg = c.orange, bg = darken(c.orange, percentage) })
  hl('NeogitHunkHeaderHighlight', { link = 'Title' })
  hl('NeogitDiffContextHighlight', { fg = c.base0, bg = c.base03 })
  hl('NeogitDiffContext', { fg = c.base0, bg = c.base04 })
  hl('NeogitDiffDeleteHighlight', { fg = c.git.delete, bg = darken(c.git.delete, percentage) })
  hl('NeogitDiffDelete', { fg = c.git.delete })
  hl('NeogitDiffAddHighlight', { fg = c.git.add, bg = darken(c.git.add, percentage) })
  hl('NeogitDiffAdd', { fg = c.git.add })
end

return M
