---@class hydra.colors.git
---@field add string
---@field change string
---@field delete string

---@class hydra.colors.diagnostic
---@field hint string
---@field info string
---@field warn string
---@field error string
---@field ok string

---@class hydra.colors
---@field base04 string
---@field base03 string
---@field base02 string
---@field base01 string
---@field base0 string
---@field blue string
---@field red string
---@field green string
---@field teal string
---@field yellow string
---@field orange string
---@field pink string
---@field purple string
---@field white string
---@field diagnostic hydra.colors.diagnostic
---@field git hydra.colors.git
---@type hydra.colors
local M = {
  base04 = '#181a1f', -- background dark
  base03 = '#1c1e24', -- background
  base02 = '#282c34', -- highlight
  base01 = '#53565c', -- comment
  base0 = '#d4d4d6',  -- foreground
  pink = '#ff7eb6',   -- keyword
  blue = '#33b1ff',   -- function, method
  purple = '#b392f0', -- string
  red = '#f97583',    -- operator,
  yellow = '#e5c07b', -- type, constructor
  orange = '#d19a66', -- constant, boolean, number, float, parameter,
  green = '#85e89d',  -- htm-tag
  teal = '#2bbac5',   -- field property
  white = '#ffffff',  -- variable
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
    ok = '#89ca78',
  },
}

return M
