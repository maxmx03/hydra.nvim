local M = {}

---@param opts hydra.highlights.load_modules.opts
M.load = function(opts)
  local hl = opts.hl
  local c = opts.colors

  -- hl('CmpItemAbbr') -- Highlight group for unmatched characters of each completion field.
  hl('CmpItemAbbrDeprecated', { fg = c.base01, strikethrough = true }) -- Highlight group for unmatched characters of each deprecated completion field.
  hl('CmpItemAbbrMatch', { link = 'IncSearch' })                        -- Highlight group for matched characters of each completion field.
  hl('CmpItemAbbrMatchFuzzy', { link = 'IncSearch' })                   -- Highlight group for fuzzy-matched characters of each completion field.
  -- hl('CmpItemKind') -- Highlight group for the kind of the field.
  -- hl('CmpItemMenu') -- The menu field's highlight group.

  hl('CmpItemKindReference', { link = 'Underlined' })
  hl('CmpItemKindUnit', { link = 'Number' })
  hl('CmpItemKindEnum', { link = 'Type' })
  hl('CmpItemKindField', { link = '@field' })
  hl('CmpItemKindClass', { link = 'Type' })
  hl('CmpItemKindFile', { fg = c.base0 })
  hl('CmpItemKindProperty', { link = '@field' })
  hl('CmpItemKindMethod', { link = 'Function' })
  hl('CmpItemKindKeyword', { link = 'Keyword' })
  hl('CmpItemKindFolder', { link = 'Directory' })
  hl('CmpItemKindSnippet', { link = 'Keyword' })
  hl('CmpItemKindVariable', { link = 'Identifier' })
  hl('CmpItemKindStruct', { link = 'Structure' })
  hl('CmpItemKindInterface', { link = 'Type' })
  hl('CmpItemKindTypeParameter', { link = 'Type' })
  hl('CmpItemKindEnumMember', { link = 'Constant' })
  hl('CmpItemKindEvent', { fg = c.green })
  hl('CmpItemKindConstructor', { link = '@constructor' })
  hl('CmpItemKindConstant', { link = 'Constant' })
  hl('CmpItemKindModule', { link = '@namespace' })
  hl('CmpItemKindValue', { fg = c.base0 })
  hl('CmpItemKindColor', { fg = c.green })
  hl('CmpItemKindFunction', { link = 'Function' })
  hl('CmpItemKindText', { link = 'String' })
end

return M
