local colors = require('hydra.colors')

local hydra = {}

hydra.normal = {
  a = { bg = colors.green, fg = colors.base03 },
  b = { bg = colors.base02, fg = colors.green },
  c = { bg = colors.base04, fg = colors.base0 },
}

hydra.insert = {
  a = { bg = colors.blue, fg = colors.base03 },
  b = { bg = colors.base02, fg = colors.blue },
}

hydra.command = {
  a = { bg = colors.white, fg = colors.base03 },
  b = { bg = colors.base02, fg = colors.white },
}

hydra.visual = {
  a = { bg = colors.yellow, fg = colors.base03 },
  b = { bg = colors.base02, fg = colors.yellow },
}

hydra.replace = {
  a = { bg = colors.red, fg = colors.base03 },
  b = { bg = colors.base02, fg = colors.red },
}

return hydra
