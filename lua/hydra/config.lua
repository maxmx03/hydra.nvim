---@class hydra.config.modules
---@field treesitter boolean
---@field semantic boolean
---@field tree boolean
---@field telescope boolean
---@field lsp boolean
---@field diagnostic boolean

---@class hydra.config
---@field transparent boolean
---@field on_highlights? fun(colors: table, color: table)
---@field on_colors? fun(colors: table, color: table)
---@field modules hydra.config.modules

---@type hydra.config
local M = {}
M.transparent = false
M.on_highlights = nil
M.on_colors = nil
M.modules = {
  treesitter = true,
  semantic = true,
  tree = true,
  telescope = true,
  lsp = true,
  diagnostic = true,
}

return M
