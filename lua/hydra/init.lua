---@class hydra
---@field config hydra.config
---@field setup fun(opts: hydra.config)
---@field load fun()

local config = require('hydra.config')

---@type hydra
local M = {}

M.config = vim.deepcopy(config)

M.setup = function(opts)
  opts = opts or {}
  M.config = vim.tbl_deep_extend('force', M.config, opts)
end

M.load = function()
  vim.cmd.hi('clear')
  if vim.fn.exists('syntax_on') then
    vim.cmd.syntax('reset')
  end

  vim.g.colors_name = 'hydra'
end

return M
