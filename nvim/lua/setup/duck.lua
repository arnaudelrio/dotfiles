return {
  'tamton-aquib/duck.nvim',
  config = function()
    vim.keymap.set('n', '<leader>dd', function()
      require('duck').hatch('🦆', 10)
    end, {})
    vim.keymap.set('n', '<leader>dc', function()
      require('duck').hatch('🐈', 200)
    end, {})
    vim.keymap.set('n', '<leader>dsus', function()
      require('duck').hatch('ඞ', 0.75)
    end, {})

    vim.keymap.set('n', '<leader>dk', function()
      require('duck').cook()
    end, {})
    vim.keymap.set('n', '<leader>da', function()
      require('duck').cook_all()
    end, {})
  end,
}
