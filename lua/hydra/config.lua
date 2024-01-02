---@class hydra.config.modules
---@field treesitter boolean
---@field semantic boolean
---@field tree boolean
---@field telescope boolean
---@field lsp boolean
---@field diagnostic boolean
---@field gitsign boolean
---@field dashboard boolean
---@field cmp boolean
---@field navic boolean
---@field noice boolean
---@field bufferline boolean
---@field hop boolean
---@field illuminate boolean
---@field lazy boolean
---@field mini boolean
---@field neogit boolean
---@field neotree boolean
---@field notify boolean

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
  gitsign = true,
  dashboard = true,
  cmp = true,
  navic = true,
  noice = true,
  bufferline = true,
  hop = true,
  illuminate = true,
  lazy = true,
  mini = true,
  neogit = true,
  neotree = true,
  notify = true,
}

return M
