return {
  'folke/noice.nvim',
  dependencies = { { 'rcarriga/nvim-notify', opts = {} } },
  opts = {
    presets = {
      inc_rename = true,
      command_palette = {
        -- override where the cmdline popup appears
        views = {
          cmdline_popup = {
            position = { row = '15%', col = '50%' }, -- higher on screen, still centered
            size = { width = 60, height = 'auto' },
          },
          -- optional: tweak the popupmenu that shows completions for the cmdline
          popupmenu = {
            position = { row = '35%', col = '50%' },
            size = { width = 60, height = 10 },
          },
        },
      },
    },
  },
}
