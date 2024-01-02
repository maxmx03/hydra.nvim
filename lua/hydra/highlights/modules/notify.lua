local M = {}

---@param opts hydra.highlights.load_modules.opts
M.load = function(opts)
  local hl = opts.hl
  local blend = opts.color.blend
  local c = opts.colors
  local alpha = 0.2

  local debug = c.pink
  local trace = c.purple

  hl('NotifyBackground', { bg = c.base04 })
  hl('NotifyERRORIcon', { fg = c.diagnostic.error })
  hl('NotifyWARNIcon', { fg = c.diagnostic.warn })
  hl('NotifyINFOIcon', { fg = c.diagnostic.info })
  hl('NotifyDEBUGIcon', { fg = debug })
  hl('NotifyTRACEIcon', { fg = trace })
  hl('NotifyERRORTitle', { fg = c.diagnostic.error })
  hl('NotifyWARNTitle', { fg = c.diagnostic.warn })
  hl('NotifyINFOTitle', { fg = c.diagnostic.info })
  hl('NotifyDEBUGTitle', { fg = debug })
  hl('NotifyTRACETitle', { fg = trace })
  hl('NotifyERRORBody', {
    fg = c.diagnostic.error,
    bg = blend(c.diagnostic.error, c.base04, alpha),
  })
  hl('NotifyWARNBody', {
    fg = c.diagnostic.warn,
    bg = blend(c.diagnostic.warn, c.base04, alpha),
  })
  hl('NotifyINFOBody', { fg = c.diagnostic.info, bg = blend(c.diagnostic.info, c.base04, alpha) })
  hl('NotifyDEBUGBody', { fg = debug, bg = blend(debug, c.base04, alpha) })
  hl('NotifyTRACEBody', { fg = trace, bg = blend(trace, c.base04, alpha) })
  hl('NotifyERRORBorder', { link = 'NotifyERRORBody' })
  hl('NotifyWARNBorder', { link = 'NotifyWARNBody' })
  hl('NotifyINFOBorder', { link = 'NotifyINFOBody' })
  hl('NotifyDEBUGBorder', { link = 'NotifyDEBUGBody' })
  hl('NotifyTRACEBorder', { link = 'NotifyTRACEBody' })
end

return M
