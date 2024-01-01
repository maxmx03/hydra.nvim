---@class hydra
---@field config hydra.config
---@field colors hydra.colors
---@field setup fun(opts: hydra.config)
---@field load fun()

local config = require('hydra.config')
local colors = require('hydra.colors')
local color = require('hydra.color')
local highlights = require('hydra.highlights')

---@type hydra
local M = {}

M.config = vim.deepcopy(config)
M.colors = vim.deepcopy(colors)

M.setup = function(opts)
  opts = opts or {}

  if not vim.tbl_isempty(opts) then
    M.config = vim.tbl_deep_extend('force', M.config, opts)

    if type(opts.on_colors) == 'function' then
      M.colors = vim.tbl_deep_extend('force', M.colors, opts.on_colors(colors, color))
    end
  end
end

M.load = function()
  if vim.g.colors_name then
    vim.cmd('hi clear')
  end

  if vim.fn.exists('syntax_on') then
    vim.cmd('syntax reset')
  end

  vim.o.termguicolors = true
  vim.g.colors_name = 'hydra'

  highlights.load(M.colors, M.config)
end

return M
