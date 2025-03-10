return {
  { 'catppuccin/nvim', name = 'catppuccin', priority = 1000 },
  {
    'ellisonleao/gruvbox.nvim',
    priority = 1000,
    opts = {
      transparent = false,
    },
  },
  {
    'sho-87/kanagawa-paper.nvim',
    priority = 1000,
  },
  {
    'rebelot/kanagawa.nvim',
    priority = 1000,
    init = function()
      local p = require('kanagawa.colors').setup({ theme = 'wave' }).palette
      local c = require 'kanagawa.lib.color'
      local function bg(hex)
        return c(hex):brighten(0.042):saturate(-1):to_hex()
      end

      require('kanagawa').setup {
        compile = true,
        transparent = false,
        colors = {
          palette = {
            sumiInk0 = bg(p.sumiInk0),
            sumiInk1 = bg(p.sumiInk1),
            sumiInk2 = bg(p.sumiInk2),
            sumiInk3 = bg(p.sumiInk3),
            sumiInk4 = bg(p.sumiInk4),
            sumiInk5 = bg(p.sumiInk5),
            sumiInk6 = bg(p.sumiInk6),
            waveBlue1 = bg(p.waveBlue1),
            waveBlue2 = bg(p.waveBlue2),
          },
        },
      }
      vim.cmd 'colorscheme kanagawa'
    end,
  },
  -- {
  --   -- dir = 'C:\\Users\\elies\\Documents\\Development\\nvim\\kanagawa-desat.nvim',
  --   'NullSeile/kanagawa-desat.nvim',
  --   priority = 1000,
  --   init = function()
  --     -- require('kanagawa-desat').setup {
  --     --   transparent = true,
  --     -- }
  --     -- vim.cmd 'colorscheme kanagawa-desat'
  --   end,
  -- },
}
