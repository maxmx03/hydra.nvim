local M = {}

---@param opts hydra.highlights.load_modules.opts
M.load = function(opts)
  local hl = opts.hl
  local c = opts.colors

  hl('illuminatedWord', { bg = c.base02 })
  hl('illuminatedCurWord', { link = 'illuminatedWord' })
  hl('IlluminatedWordText', { link = 'illuminatedWord' })
  hl('IlluminatedWordRead', { link = 'illuminatedWord' })
  hl('IlluminatedWordWrite', { link = 'illuminatedWord' })
end

return M
