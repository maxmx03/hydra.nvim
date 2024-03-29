local M = {}

---@param opts hydra.highlights.load_modules.opts
M.load = function(opts)
  local hl = opts.hl
  local c = opts.colors

  hl('NavicIconsFile', { fg = c.base0 })
  hl('NavicIconsModule', { link = '@namespace' })
  hl('NavicIconsNamespace', { link = '@namespace' })
  hl('NavicIconsPackage', { link = 'Directory' })
  hl('NavicIconsClass', { link = 'Type' })
  hl('NavicIconsMethod', { link = 'Type' })
  hl('NavicIconsProperty', { link = '@field' })
  hl('NavicIconsField', { link = '@field' })
  hl('NavicIconsConstructor', { link = '@constructor' })
  hl('NavicIconsEnum', { link = 'Type' })
  hl('NavicIconsInterface', { link = 'Type' })
  hl('NavicIconsFunction', { link = 'Function' })
  hl('NavicIconsVariable', { link = 'Identifier' })
  hl('NavicIconsConstant', { link = 'Constant' })
  hl('NavicIconsString', { link = 'String' })
  hl('NavicIconsNumber', { link = 'Number' })
  hl('NavicIconsBoolean', { link = 'Boolean' })
  hl('NavicIconsArray', { link = 'Delimiter' })
  hl('NavicIconsObject', { link = '@field' })
  hl('NavicIconsKey', { link = '@field' })
  hl('NavicIconsNull', { link = 'Constant' })
  hl('NavicIconsEnumMember', { link = 'Constant' })
  hl('NavicIconsStruct', { link = 'Structure' })
  hl('NavicIconsEvent', { fg = c.green })
  hl('NavicIconsOperator', { link = 'Operator' })
  hl('NavicIconsTypeParameter', { link = '@parameter' })
  hl('NavicText', { fg = c.base0 })
  hl('NavicSeparator', { link = 'Keyword' })
end

return M
