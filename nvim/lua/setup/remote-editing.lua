return {
  {
    'nosduco/remote-sshfs.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim' },
    opts = {
      -- Refer to the configuration section below
      -- or leave empty for defaults
    },
  },
  {
    'amitds1997/remote-nvim.nvim',
    version = '*', -- Pin to GitHub releases
    dependencies = {
      'nvim-lua/plenary.nvim', -- For standard functions
      'MunifTanjim/nui.nvim', -- To build the plugin UI
      'nvim-telescope/telescope.nvim', -- For picking b/w different remote methods
    },
    config = true,
  },
}
