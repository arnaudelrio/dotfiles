return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    local center = {
      {
        icon = ' ',
        desc = 'New File            ',
        action = 'DashboardNewFile',
        shortcut = 'SPC o',
      },
      {
        icon = ' ',
        desc = 'Find File           ',
        action = 'Telescope find_files',
        shortcut = 'SPC f',
      },
    }

    if vim.fn.hostname() == 'dev2new' then
      table.insert(center, {
        icon = ' ',
        desc = 'qwc2-giswater-app',
        action = function()
          vim.cmd 'cd /home/bgeoadmin/qwc2-giswater-app'
          vim.cmd 'Telescope find_files'
        end,
        shortcut = 'SPC q',
      })
      table.insert(center, {
        icon = ' ',
        desc = 'qwc-docker-dev',
        action = function()
          vim.cmd 'cd /home/bgeoadmin/qwc-docker-dev'
          vim.cmd 'Py'
          vim.cmd 'Telescope find_files'
        end,
        shortcut = 'SPC q',
      })
    end

    table.insert(center, {
      icon = ' ',
      desc = 'Configure Neovim    ',
      action = function()
        local config_path = vim.call('stdpath', 'config')
        vim.cmd('cd ' .. config_path)
        vim.cmd 'Telescope find_files'
      end,
      shortcut = 'SPC v',
    })
    table.insert(center, {
      icon = ' ',
      desc = 'Exit Neovim              ',
      action = 'quit',
    })

    local pythoncmd = 'python3'
    if vim.fn.has 'win32' == 1 then
      pythoncmd = 'python'
    end

    require('dashboard').setup {
      -- theme = 'hyper',
      theme = 'doom',
      preview = {
        -- command = 'lolcrab',
        -- command = vim.fn.stdpath 'config' .. '/test',
        command = pythoncmd .. ' ' .. vim.fn.stdpath 'config' .. '/header.py',
        file_path = vim.fn.stdpath 'config' .. '/art.txt',
        file_width = 71,
        file_height = 13,
      },
      config = {
        center = center,
      },
    }
  end,
  dependencies = { { 'nvim-tree/nvim-web-devicons' } },
}
