describe('Hydra', function()
  setup(function()
    vim.cmd.colorscheme('hydra')
  end)

  test('colors_name', function()
    assert.equal('hydra', vim.g.colors_name)
  end)
end)
