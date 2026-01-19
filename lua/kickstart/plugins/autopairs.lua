-- autopairs
-- https://github.com/windwp/nvim-autopairs

return {
  'windwp/nvim-autopairs',
  event = 'InsertEnter',
  opts = function(_, opts)
    local Rule = require 'nvim-autopairs.rule'
    local npairs = require 'nvim-autopairs'

    -- Add a rule to handle triple quotes
    npairs.add_rules {
      Rule('"""', '"""', 'python'):with_move(function(opts)
        return opts.char == '"'
      end),
      Rule("'''", "'''", 'python'):with_move(function(opts)
        return opts.char == "'"
      end),
    }

    return opts
  end,
}
