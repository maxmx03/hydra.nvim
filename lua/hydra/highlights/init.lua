---@class hydra.highlights.load_modules.opts
---@field colors hydra.colors
---@field color hydra.color
---@field config hydra.config
---@field hl fun(name: string, val?: vim.api.keyset.highlight, opts?: { transparent: boolean })

---@class hydra.highlights
---@field load fun(colors: hydra.colors, config: hydra.config)
---@field on_highlights fun(highlights: table)
---@field load_modules fun(opts: hydra.highlights.load_modules.opts)

local color = require('hydra.color')

---@type hydra.highlights
local M = {}

---@param opts vim.api.keyset.get_highlight
---@return table
local function nvim_get_hl(opts)
  local hl = vim.api.nvim_get_hl(0, opts)

  if hl.link then
    return nvim_get_hl(opts)
  end

  return hl
end

---@param name string
---@param val? vim.api.keyset.highlight
---@param opts? { transparent: boolean }
local function nvim_set_hl(name, val, opts)
  ---@type vim.api.keyset.highlight
  local default = { fg = 'NONE', bg = 'NONE' }
  val = val or {}

  if not val.link then
    val = vim.tbl_extend('force', default, val)
  end

  if opts and opts.transparent then
    val.bg = 'NONE'
  end

  vim.api.nvim_set_hl(0, name, val)
end

M.load_modules = function(opts)
  local modules = opts.config.modules

  for module, enabled in pairs(modules) do
    if enabled then
      local plugin = require(string.format('hydra.highlights.modules.%s', module))
      plugin.load(opts)
    end
  end
end

M.on_highlights = function(highlights)
  for group_name, group_val in pairs(highlights) do
    local hl = nvim_get_hl({ name = group_name, link = true })
    local val = vim.tbl_extend('force', hl, group_val)
    vim.api.nvim_set_hl(0, group_name, val)
  end
end

M.load = function(colors, config)
  local editor = require('hydra.highlights.editor')
  editor.load({
    hl = nvim_set_hl,
    color = color,
    colors = colors,
    config = config,
  })
  local syntax = require('hydra.highlights.syntax')
  syntax.load({
    hl = nvim_set_hl,
    color = color,
    colors = colors,
    config = config,
  })
  print('loadds???')
  -- M.load_modules({
  --   hl = nvim_set_hl,
  --   color = color,
  --   colors = colors,
  --   config = config,
  -- })
  --
  -- if type(config.on_highlights) == 'function' then
  --   local highlight_groups = config.on_highlights(colors, color)
  --   M.on_highlights(highlight_groups)
  -- end
end

return M
