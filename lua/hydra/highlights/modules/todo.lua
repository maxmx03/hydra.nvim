local M = {}

---@param opts hydra.highlights.load_modules.opts
M.load = function(opts)
  local hl = opts.hl
  local c = opts.colors

  -- TODO: TODO
  -- WARN: WARN
  -- TEST: TEST
  -- PERF: PERF
  -- NOTE: NOTE
  -- HACK: HACK
  -- BUG: BUG

  hl('TodoFgTODO', { fg = c.diagnostic.info })
  hl('TodoFgWARN', { fg = c.diagnostic.warn })
  hl('TodoFgTEST', { fg = c.diagnostic.ok })
  hl('TodoFgPERF', { fg = c.pink })
  hl('TodoFgNOTE', { fg = c.diagnostic.hint })
  hl('TodoFgHACK', { fg = c.purple })
  hl('TodoFgFIX', { fg = c.diagnostic.error })

  hl('TodoSignTODO', { fg = c.diagnostic.info })
  hl('TodoSignWARN', { fg = c.diagnostic.warn })
  hl('TodoSignTEST', { fg = c.diagnostic.ok })
  hl('TodoSignPERF', { fg = c.pink })
  hl('TodoSignNOTE', { fg = c.diagnostic.hint })
  hl('TodoSignHACK', { fg = c.purple })
  hl('TodoSignFIX', { fg = c.diagnostic.error })

  hl('TodoBgTODO', { fg = c.diagnostic.info, reverse = true })
  hl('TodoBgWARN', { fg = c.diagnostic.warn, reverse = true })
  hl('TodoBgTEST', { fg = c.diagnostic.ok, reverse = true })
  hl('TodoBgPERF', { fg = c.pink, reverse = true })
  hl('TodoBgNOTE', { fg = c.diagnostic.hint, reverse = true })
  hl('TodoBgHACK', { fg = c.purple, reverse = true })
  hl('TodoBgFIX', { fg = c.diagnostic.error, reverse = true })
end

return M
