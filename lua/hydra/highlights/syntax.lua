local M = {}

---@param opts hydra.highlights.load_modules.opts
M.load = function(opts)
  local hl = opts.hl
  local c = opts.colors

  hl('Comment', { fg = c.base01, italic = true }) -- any comment
  hl('Constant', { fg = c.pink }) -- any constant
  hl('String', { fg = c.purple }) -- a string constant: "this is a string"
  hl('Character', { link = 'String' }) -- a character constant: 'c', '\n'
  hl('Number', { link = 'Constant' }) -- a number constant: 234, 0xff
  hl('Boolean', { link = 'Constant' }) -- a boolean constant: TRUE, false
  hl('Float', { link = 'Constant' }) -- a floating point constant: 2.3e10
  hl('Identifier', { fg = c.white }) -- any variable name
  hl('Function', { fg = c.blue }) -- function name (also: methods for classes)
  hl('Statement', { link = 'Keyword' }) -- any statement
  hl('Conditional', { link = 'Keyword' }) -- if, then, else, endif, switch, etc.
  hl('Repeat', { link = 'Keyword' }) -- for, do, while, etc.
  hl('Label', { link = 'Keyword' }) -- case, default, etc.
  hl('Operator', { fg = c.red }) -- "sizeof", "+", "*", etc.
  hl('Keyword', { fg = c.red, bold = true }) -- any other keyword
  hl('Exception', { link = 'Keyword' }) -- try, catch, throw
  hl('PreProc', { link = 'Keyword' }) -- generic Preprocessor
  hl('Include', { link = 'Keyword' }) -- preprocessor #include
  hl('Define', { link = 'Keyword' }) -- preprocessor #define
  hl('Macro', { link = 'Keyword' }) -- same as Define
  hl('PreCondit', { link = 'Keyword' }) -- preprocessor #if, #else, #endif, etc.
  hl('Type', { fg = c.yellow }) -- int, long, char, etc.
  hl('StorageClass', { link = 'Keyword' }) -- static, register, volatile, etc.
  hl('Structure', { fg = c.yellow }) -- struct, union, enum, etc.
  hl('Typedef', { link = 'Keyword' }) -- A typedef
  hl('Special', { link = 'Function' }) -- special symbol
  hl('SpecialChar', { link = 'Constant' }) -- special character in a constant
  hl('Tag', { link = 'Special' }) -- you can use CTRL-] on this
  hl('Delimiter', { fg = c.base0 }) -- character that needs attention
  hl('SpecialComment', { link = 'Keyword' }) -- special things inside a comment
  hl('Debug', { link = 'Keyword' }) -- debugging statements
  hl('Underlined', { fg = c.purple, underline = true }) --text that stands out, HTML links
  hl('Ignore') --left blank, hidden  |hl-Ignore|
  hl('Error', { fg = c.diagnostic.error }) --any erroneous construct
  hl('Todo', { fg = c.red, bold = true }) --anything that needs extra attention; mostly the keywords TODO FIXME and X
end

return M
