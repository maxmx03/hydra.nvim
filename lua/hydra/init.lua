---@class hydra
---@field config hydra.config
---@field colors hydra.colors
---@field setup fun(opts: hydra.config)
---@field load fun()

local config = require('hydra.config')
local colors = require('hydra.colors')
local color = require('hydra.color')

---@type hydra
local M = {}

M.config = vim.deepcopy(config)
M.colors = vim.deepcopy(colors)

M.setup = function(opts)
  opts = opts or {}

  if not vim.tbl_isempty(opts) then
    M.config = vim.tbl_deep_extend('force', M.config, opts)
    M.colors = vim.tbl_deep_extend('force', M.colors, opts.on_colors(colors, color))
  end
end

M.load = function()
  vim.cmd.hi('clear')
  if vim.fn.exists('syntax_on') then
    vim.cmd.syntax('reset')
  end

  vim.g.colors_name = 'hydra'
end

return M
