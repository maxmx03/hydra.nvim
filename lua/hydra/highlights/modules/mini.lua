local M = {}

---@param opts hydra.highlights.load_modules.opts
M.load = function(opts)
  local hl = opts.hl
  local c = opts.colors
  local darken = opts.color.darken
  local percentage = 25

  -- MiniCursor
  hl('MiniCursorword', { link = 'Visual' })

  -- MiniStatusLine
  hl('MiniStatuslineModeNormal', { fg = c.base03, bg = c.green })
  hl('MiniStatuslineModeInsert', { fg = c.base03, bg = c.blue })
  hl('MiniStatuslineModeVisual', { fg = c.base03, bg = c.yellow })
  hl('MiniStatuslineModeReplace', { fg = c.base03, bg = c.red })
  hl('MiniStatuslineModeCommand', { fg = c.base03, bg = c.purple })
  hl('MinistatusLineFileName', {
    bg = c.base04,
    fg = c.base0,
  })
  hl('MiniStatuslineDevinfo', {
    bg = c.base02,
    fg = c.base0,
  })
  hl('MiniStatuslineFileinfo', {
    bg = c.base02,
    fg = c.base0,
  })
  hl('MiniStatuslineInactive', { fg = c.base01, bg = c.base03 })

  -- MiniTabLine
  hl('MiniTablineCurrent', { fg = c.base0, bg = c.base03 })
  hl('MiniTablineVisible', { fg = c.base0, bg = c.base03 })
  hl('MiniTablineHidden', { fg = c.base01, bg = c.base03 })
  hl('MiniTablineModifiedCurrent', { link = 'MiniTabLineCurrent' })
  hl('MiniTablineModifiedVisible', { link = 'MiniTablineVisible' })
  hl('MiniTablineModifiedHidden', { link = 'MiniTablineHidden' })
  hl('MiniTablineFill', { fg = c.base0, bg = darken(c.base03, percentage) })
  hl('MiniTablineTabpagesection', { fg = c.base0, bg = darken(c.base03, percentage) })

  -- MiniStarter
  hl('MiniStarterCurrent', { link = 'CursorLine' })
  hl('MiniStarterHeader', { fg = c.red })
  hl('MiniStarterFooter', { fg = c.base01 })
  hl('MiniStarterItem', { fg = c.base0 })
  hl('MiniStarterItemBullet', { fg = c.pink })
  hl('MiniStarterItemPrefix', { fg = c.pink })
  hl('MiniStarterSection', { link = 'Title' })
  hl('MiniStarterQuery', { fg = c.red, bold = true })
end

return M
