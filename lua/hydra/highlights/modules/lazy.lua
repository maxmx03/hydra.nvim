local M = {}

---@param opts hydra.highlights.load_modules.opts
M.load = function(opts)
  local hl = opts.hl
  local c = opts.colors
  local blend = opts.color.blend
  local alpha = 0.2

  hl('LazyButton', {
    fg = c.red,
    bg = blend(c.red, c.base04, alpha),
  })
  hl('LazyButtonActive', {
    fg = c.yellow,
    bg = blend(c.yellow, c.base04, alpha),
  })
  hl('LazyCommitIssue', { fg = c.diagnostic.error })
  hl('LazyH1', { fg = c.yellow })
  hl('LazySpecial', { fg = c.orange })
  hl('LazyValue', { fg = c.teal })
  hl('LazyProgressDone', { fg = c.yellow })
  hl('LazyProgressTodo', { fg = blend(c.yellow, c.base04, alpha) })
end

return M
