local M = {}

---@param opts hydra.highlights.load_modules.opts
M.load = function(opts)
  local hl = opts.hl
  local c = opts.colors
  local config = opts.config
  local blend = opts.color.blend
  local alpha = 0.2

  hl('TelescopeSelection', { link = 'CursorLine' })
  hl('TelescopeSelectionCaret', { fg = c.red, bg = c.base02 })
  hl('TelescopeMultiSelection', { fg = c.yellow })
  hl('TelescopeMultiIcon', { fg = c.red })

  -- "Normal" in the floating windows created by telescope.
  hl('TelescopeNormal', { fg = c.base0, bg = c.base04 }, { transparent = config.transparent })
  hl('TelescopePreviewNormal', { link = 'TelescopeNormal' })
  hl('TelescopePromptNormal', { link = 'TelescopeNormal' })
  hl('TelescopeResultsNormal', { link = 'TelescopeNormal' })

  -- Border highlight groups.
  --   Use TelescopeBorder to override the default.
  --   Otherwise set them specifically
  hl('TelescopeBorder', { fg = c.base02, bg = c.base04 })
  hl('TelescopePromptBorder', { link = 'TelescopeBorder' })
  hl('TelescopeResultsBorder', { link = 'TelescopeBorder' })
  hl('TelescopePreviewBorder', { link = 'TelescopeBorder' })

  -- Title highlight groups.
  --   Use TelescopeTitle to override the default.
  --   Otherwise set them specifically
  hl('TelescopeTitle', { fg = c.yellow, bg = blend(c.pink, c.base04, alpha) })
  hl('TelescopePromptTitle', { link = 'TelescopeTitle' })
  hl('TelescopeResultsTitle', { link = 'TelescopeTitle' })
  hl('TelescopePreviewTitle', { link = 'TelescopeTitle' })

  hl('TelescopePromptCounter', { link = 'NonText' })

  -- Used for highlighting characters that you match.
  hl('TelescopeMatching', { link = 'IncSearch' })

  -- Used for the prompt prefix
  hl('TelescopePromptPrefix', { fg = c.red })
end

return M
