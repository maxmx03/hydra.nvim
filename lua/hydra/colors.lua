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
---@field base07 string
---@field base06 string
---@field base05 string
---@field base04 string
---@field base03 string
---@field base02 string
---@field base01 string
---@field base0 string
---@field base1 string
---@field base2 string
---@field base3 string
---@field base4 string
---@field base5 string
---@field base6 string
---@field base7 string
---@field blue string
---@field red string
---@field green string
---@field yellow string
---@field orange string
---@field pink string
---@field purple string
---@field white string
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
  base0 = '#686b70', -- foreground dark / light
  base1 = '#7e8085', -- comment light
  base2 = '#939599', -- background highlight light
  base3 = '#a9aaad', -- backround light
  base4 = '#bebfc2', -- background float
  base5 = '#d4d4d6',
  base6 = '#e9e9ea',
  base7 = '#ffffff',
  pink = '#ff7eb6', -- keyword
  blue = '#33b1ff', -- property, field
  purple = '#b392f0', -- string
  red = '#f97583', -- constant, boolean, number, float, parameter,
  yellow = '#e5c07b', -- function, method
  orange = '#d19a66', -- Type, constructor
  green = '#85e89d', -- htm-tag
  white = '#ffffff', -- variable
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

return M
