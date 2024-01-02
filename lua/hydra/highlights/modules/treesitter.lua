local M = {}

---@param opts hydra.highlights.load_modules.opts
M.load = function(opts)
  local hl = opts.hl
  local c = opts.colors

  hl('@comment', { link = 'Comment' })                        -- line and block comments
  hl('@comment.documentation', { link = 'Comment' })          -- comments documenting code
  hl('@error', { link = 'Error' })                            -- syntax/parser errors
  hl('@none', { link = 'Ignore' })                            -- completely disable the highlight
  hl('@preproc', { link = 'Keyword' })                        -- various preprocessor directives & shebangs
  hl('@define', { link = 'Keyword' })                         -- preprocessor definition directives
  hl('@operator', { link = 'Operator' })                      -- symbolic operators (e.g. `+` / `*`)

  hl('@punctuation.delimiter', { link = 'Delimiter' })        -- delimiters (e.g. `;` / `.` / `,`)
  hl('@punctuation.bracket', { link = 'Delimiter' })          -- brackets (e.g. `()` / `{}` / `[]`)
  hl('@punctuation.special', { link = 'Delimiter' })          -- special symbols (e.g. `{}` in string interpolation)

  hl('@string', { link = 'String' })                          -- string literals
  hl('@string.documentation', { link = 'Comment' })           -- string documenting code (e.g. Python docstrings)
  hl('@string.regex', { link = 'Function' })                  -- regular expressions
  hl('@string.escape', { link = 'Keyword' })                  -- escape sequences
  hl('@string.special', { link = 'Constant' })                -- other special strings (e.g. dates)

  hl('@character', { link = 'String' })                       -- character literals
  hl('@character.special', { link = 'Constant' })             -- special characters (e.g. wildcards)

  hl('@boolean', { link = 'Constant' })                       -- boolean literals
  hl('@number', { link = 'Constant' })                        -- numeric literals
  hl('@float', { link = 'Constant' })                         -- floating-point number literals

  hl('@function', { link = 'Function' })                      -- function definitions
  hl('@function.builtin', { link = 'Function' })              -- built-in functions
  hl('@function.call', { link = 'Function' })                 -- function calls
  hl('@function.macro', { link = 'Function' })                -- preprocessor macros

  hl('@method', { link = 'Function' })                        -- method definitions
  hl('@method.call', { link = 'Function' })                   -- method calls

  hl('@constructor', { link = 'Type' })                       -- constructor calls and definitions
  hl('@parameter', { fg = c.orange })                         -- parameters of a function

  hl('@keyword', { link = 'Keyword' })                        -- various keywords
  hl('@keyword.coroutine', { link = 'Keyword' })              -- keywords related to coroutines (e.g. `go` in Go, `async/await` in Python)
  hl('@keyword.function', { link = 'Keyword' })               -- keywords that define a function (e.g. `func` in Go, `def` in Python)
  hl('@keyword.operator', { link = 'Keyword' })               -- operators that are English words (e.g. `and` / `or`)
  hl('@keyword.return', { link = 'Keyword' })                 -- keywords like `return` and `yield`

  hl('@conditional', { link = 'Keyword' })                    -- keywords related to conditionals (e.g. `if` / `else`)
  hl('@conditional.ternary', { link = 'Keyword' })            -- ternary operator (e.g. `?` / `:`)

  hl('@repeat', { link = 'Keyword' })                         -- keywords related to loops (e.g. `for` / `while`)
  hl('@debug', { link = 'Keyword' })                          -- keywords related to debugging
  hl('@label', { link = 'Keyword' })                          -- GOTO and other labels (e.g. `label:` in C)
  hl('@include', { link = 'Keyword' })                        -- keywords for including modules (e.g. `import` / `from` in Python)
  hl('@exception', { link = 'Keyword' })                      -- keywords related to exceptions (e.g. `throw` / `catch`)

  hl('@type', { link = 'Type' })                              -- type or class definitions and annotations
  hl('@type.builtin', { link = 'Type' })                      -- built-in types
  hl('@type.definition', { link = 'Type' })                   -- type definitions (e.g. `typedef` in C)
  hl('@type.qualifier', { link = 'Keyword' })                 -- type qualifiers (e.g. `const`)

  hl('@storageclass', { link = 'Keyword' })                   -- modifiers that affect storage in memory or life-time
  hl('@attribute', { link = 'Function' })                     -- attribute annotations (e.g. Python decorators)
  hl('@field', { fg = c.teal })                               -- object and struct fields
  hl('@property', { link = '@field' })                        -- similar to `@field`

  hl('@variable', { link = 'Identifier' })                    -- various variable names
  hl('@variable.builtin', { link = 'Constant' })              -- built-in variable names (e.g. `this`)

  hl('@constant', { link = 'Constant' })                      -- constant identifiers
  hl('@constant.builtin', { link = 'Constant' })              -- built-in constant values
  hl('@constant.macro', { link = 'Constant' })                -- constants defined by the preprocessor

  hl('@namespace', { link = 'Constant' })                     -- modules or namespaces
  hl('@symbol', { link = 'Constant' })                        -- symbols or atoms

  hl('@text', { fg = c.base0 })                               -- non-structured text
  hl('@text.strong', { fg = c.orange })                       -- bold text
  hl('@text.emphasis', { link = '@text.strong' })             -- text with emphasis
  hl('@text.underline', { link = 'Underlined' })              -- underlined text
  hl('@text.strike', { fg = c.base01, strikethrough = true }) -- strikethrough text
  hl('@text.title', { link = 'Title' })                       -- text that is part of a title
  hl('@text.quote', { fg = c.yellow })                        -- text quotations
  hl('@text.uri', { link = 'Underlined' })                    -- URIs (e.g. hyperlinks)
  hl('@text.math', { link = 'Number' })                       -- math environments (e.g. `$ ... $` in LaTeX)
  hl('@text.environment', { fg = c.base0 })                   -- text environments of markup languages
  hl('@text.environment.name', { link = 'Keyword' })          -- text indicating the type of an environment
  hl('@text.reference', { link = 'Underlined' })              -- text references, footnotes, citations, etc.

  hl('@text.literal', { link = '@text' })                     -- literal or verbatim text (e.g., inline code)
  hl('@text.literal.block', { link = '@text' })               -- literal or verbatim text as a stand-alone block

  hl('@text.todo', { link = 'Todo' })                         -- todo notes
  hl('@text.note', { fg = c.diagnostic.info })                -- info notes
  hl('@text.warning', { fg = c.diagnostic.warn })             -- warning notes
  hl('@text.danger', { fg = c.diagnostic.error })             -- danger/error notes

  hl('@text.diff.add', { fg = c.git.add })                    -- added text (for diff files)
  hl('@text.diff.delete', { fg = c.git.delete })              -- deleted text (for diff files)

  hl('@tag', { fg = c.green })                                -- XML tag names
  hl('@tag.attribute', { link = '@property' })                -- XML tag attributes
  hl('@tag.delimiter', { link = 'Delimiter' })                -- XML tag delimiters

  -- hl('@conceal')                               -- for captures that are only used for concealing
  -- hl('@spell')                                 -- for defining regions to be spellchecked
  -- hl('@nospell')                               -- for defining regions that should NOT be spellchecked

  -- Ruby
  hl('@label.ruby', { link = '@variable.builtin' }) -- ex: @location = ...

  -- Json
  hl('@label.json', { link = '@field' })            -- ex: @location = ...

  -- Python
  hl('@function.builtin.python', { link = 'Type' })
end

return M
