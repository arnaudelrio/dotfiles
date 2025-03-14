-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- vim.cmd 'language en_US'

require 'options'
require 'keymaps'
require 'autocommands'
require 'lazy-plugin'
