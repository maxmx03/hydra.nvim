local M = {}

---@param opts hydra.highlights.load_modules.opts
M.load = function(opts)
  local hl = opts.hl
  local c = opts.colors

  -- general
  hl('DashboardHeader', { fg = c.teal })
  hl('DashboardFooter', { fg = c.base01 })

  -- Hyper
  hl('DashboardProjectTitle', { fg = c.red })
  hl('DashboardProjectTitleIcon', { link = 'DashboardProjectTitle' })
  hl('DashboardProjectIcon', { link = 'Directory' })
  hl('DashboardMruTitle', { link = 'DashboardProjectTitle' })
  hl('DashboardMruIcon', { link = 'DashboardMruTitle' })
  hl('DashboardFiles', { fg = c.base0 })
  hl('DashboardShotCutIcon', { fg = c.red })

  -- Doom theme
  hl('DashboardDesc', { link = 'Directory' })
  hl('DashboardKey', { fg = c.red })
  hl('DashboardIcon', { link = 'Directory' })
  hl('DashboardShotCut', { fg = c.base0 })
end

return M
