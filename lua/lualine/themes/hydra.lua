local colors = require('hydra.colors')
local color = require('hydra.color')
local base05 = color.darken(colors.base04, 10)

local hydra = {}

hydra.normal = {
  a = { bg = colors.green, fg = colors.base03 },
  b = { bg = colors.base04, fg = colors.green },
  c = { bg = base05, fg = colors.base0 },
}

hydra.insert = {
  a = { bg = colors.blue, fg = colors.base03 },
  b = { bg = colors.base04, fg = colors.blue },
}

hydra.command = {
  a = { bg = colors.purple, fg = colors.base03 },
  b = { bg = colors.base04, fg = colors.purple },
}

hydra.visual = {
  a = { bg = colors.yellow, fg = colors.base03 },
  b = { bg = colors.base04, fg = colors.yellow },
}

hydra.replace = {
  a = { bg = colors.red, fg = colors.base03 },
  b = { bg = colors.base04, fg = colors.red },
}

return hydra
