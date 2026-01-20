-- autopairs
-- https://github.com/windwp/nvim-autopairs
return {
  'windwp/nvim-autopairs',
  event = 'InsertEnter',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  config = function()
    local npairs = require 'nvim-autopairs'
    local Rule = require 'nvim-autopairs.rule'

    -- Setup autopairs first
    npairs.setup {}

    -- Then add custom rules
    npairs.add_rules {
      Rule('"""', '"""', 'python'):with_move(function(opts)
        return opts.char == '"'
      end),
      Rule("'''", "'''", 'python'):with_move(function(opts)
        return opts.char == "'"
      end),
    }
  end,
}
