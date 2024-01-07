local colors = vim.deepcopy(require('hydra.colors'))
local id = 0
local name = 'zsh'
local hl = vim.api.nvim_set_hl

hl(id, name .. 'KSHFunction', { link = 'Function' })
hl(id, name .. 'VariableDef', { link = 'Constant' })
hl(id, name .. 'SubstQuoted', { link = 'Constant' })
hl(id, name .. 'Deref', { link = 'Constant' })
hl(id, name .. 'ShortDeref', { fg = colors.orange })
hl(id, name .. 'SubstDelim', { fg = colors.teal })
