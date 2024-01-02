# Hydra Colorscheme

<div align="center">

![Frame 1](https://github.com/maxmx03/hydra.nvim/assets/50273941/536e8b0d-faa1-4bca-b85f-b6228592642f)

![Neovim](https://img.shields.io/badge/Neovim-v0.9.1+-blue?NeoVim-%2357A143.svg?&style=for-the-badge&logo=neovim&logoColor=white)
![LICENSE](https://shields.io/badge/LICENSE-MIT-orange?style=for-the-badge)

</div>

<!--toc:start-->
- [Hydra Colorscheme](#hydra-colorscheme)
  - [Installation](#installation)
  - [Configuration](#configuration)
  - [Commands](#commands)
  - [Api](#api)
<!--toc:end-->

Hydra colorscheme is based on onedarkpro and doom-one

## Installation

```lua
return {
    {
        'maxmx03/hydra.nvim',
        lazy = false,
        priority = 1000,
        config = function ()
            vim.cmd.colorscheme 'hydra'
        end
    },
    {
        'nvim-lualine/lualine.nvim',
        config = function()
          require('lualine').setup {
            options = {
              theme = 'hydra',
            },
          }
        end,
    },
}
```

## Configuration

```lua
local hydra = require 'hydra'
hydra.setup {
    transparent = false,
    modules = {
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
      saga = true,
      whichkey = true,
      todo = true,
      blankline = true,
    },
    on_colors = function(colors, color)
        return {}
    end
    on_highlights = function (colors, color)
        local darken = color.darken
        local lighten = color.lighten
        local shade = color.shade
        local tint = color.tint
        local blend = color.blend

        return {
            Function = { italic = false },
            Identifier = { bold = true },
            LineNr = {
                fg = colors.pink,
                bg = darken(colors.pink, 50)
            },
            LineNr = {
                fg = colors.pink,
                bg = lighten(colors.pink, 50)
            },
            LineNr = {
                fg = colors.pink,
                bg = shade(colors.pink, 5)
            },
            LineNr = {
                fg = colors.pink,
                bg = tint(colors.pink, 5)
            },
            LineNr = {
                fg = colors.pink,
                bg = blend(colors.pink, colors.base03, 0.2)
            },
        }
    end
}
```

## Commands

`Hydra colors`

## Api

```lua
local colors = require 'hydra.colors'
local color = require 'hydra.color'
local darken = color.darken
local lighten = color.lighten
local blend = color.blend
local shade = color.shade
local tint = color.tint

-- example 1: get shades
for i = 1, 10, 1 do
    print(shade(colors.yellow, i))
end

for i = 1, 100, 10 do
    print(darken(colors.yellow, i))
end

-- example 2: get tints
for i = 1, 10, 1 do
    print(tint(colors.yellow, i))
end

for i = 1, 100, 10 do
    print(lighten(colors.yellow, i))
end

-- example 3: blend color
local new_color = blend(colors.yellow, colors.base03, 0.2)
```
