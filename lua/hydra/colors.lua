---@class hydra.colors.git
---@field add string
---@field change string
---@field delete string

---@class hydra.colors.diagnostic
---@field hint string
---@field info string
---@field warn string
---@field error string

---@class hydra.colors
---@field base04 string
---@field base03 string
---@field base02 string
---@field base01 string
---@field base0 string
---@field blue string
---@field red string
---@field green string
---@field yellow string
---@field orange string
---@field pink string
---@field purple string
---@field violet string
---@field diagnostic hydra.colors.diagnostic
---@field git hydra.colors.git
---@type hydra.colors
local M = {
  base07 = '#181a1f',
  base06 = '#1c1e24',
  base05 = '#202329',
  base04 = '#24272e', -- background float
  base03 = '#282c34', -- background dark
  base02 = '#3d4148', -- background highlight dark
  base01 = '#53565c', -- comment
  base0 = '#686b70',  -- foreground dark / light
  pink = '#ff7eb6',   -- keyword
  blue = '#33b1ff',   -- function, method
  purple = '#c678dd', -- keyword
  violet = '#b392f0', -- string
  red = '#f97583',    -- field, property, html attribute
  yellow = '#e5c07b', -- Type, constructor
  orange = '#d19a66', -- parameter
  green = '#85e89d',  -- htm-tag
  git = {
    add = '#89ca78',
    change = '#d19a66',
    delete = '#ef596f',
  },
  diagnostic = {
    hint = '#61afef',
    info = '#61afef',
    warn = '#e5c07b',
    error = '#ef596f',
  },
}


-- light theme
-- base1 = '#7e8085',  -- comment light
-- base2 = '#939599',  -- background highlight light
-- base3 = '#a9aaad',  -- backround light
-- base4 = '#bebfc2',
-- base5 = '#d4d4d6',
-- base6 = '#e9e9ea',
-- base7 = '#ffffff',

return M
