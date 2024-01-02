vim.api.nvim_create_user_command('Hydra', function(args)
  require('hydra.command').load(args.fargs[1], vim.list_slice(args.fargs, 2))
end, {
  range = true,
  nargs = '+',
  complete = function(arg)
    local list = require('hydra.command').list()

    return vim.tbl_filter(function(s)
      return string.match(s, '^' .. arg)
    end, list)
  end,
})
