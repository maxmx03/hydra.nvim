local nvim_get_hl = require('hydra.test').nvim_get_hl

describe('Hydra', function()
  setup(function()
    require('hydra').setup({})
    vim.cmd.colorscheme('hydra')
  end)

  test('colors_name', function()
    assert.equal('hydra', vim.g.colors_name)
  end)

  test('syntax highlights', function()
    local output = nvim_get_hl('String')
    local colors = require('hydra.colors')
    assert.equal(colors.purple, output.fg)
  end)
end)
