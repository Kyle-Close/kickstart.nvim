-- Set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Enable nerd font. Ensure you have nerd font installed and enabled in terminal
vim.g.have_nerd_font = true

-- Load keymaps
require 'keymaps'

-- Load options
require 'options'

-- Load auto commands
require 'autocommands'

-- Bootstrap/configure lazy.nvim
require 'lazy-setup'
