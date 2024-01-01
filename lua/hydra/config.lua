---@class hydra.config
---@field transparent boolean
---@field on_highlights fun(colors: table, color: table)
---@field on_colors fun(colors: table, color: table)

---@type hydra.config
local M = {}
M.transparent = false
M.on_highlights = function() end
M.on_colors = function() end

return M
