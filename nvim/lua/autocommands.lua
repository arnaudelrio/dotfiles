-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

---Set a user var in the current wezterm pane
---
---@param name string
---@param value string | number | boolean | table | nil
local function set_user_var(name, value)
  local ty = type(value)

  if ty == 'table' then
    value = vim.json.encode(value)
  elseif ty == 'function' or ty == 'thread' then
    error('cannot serialize ' .. ty)
  elseif ty == 'boolean' then
    value = value and 'true' or 'false'
  elseif ty == 'nil' then
    value = ''
  end

  local template = '\x1b]1337;SetUserVar=%s=%s\a'
  local command = template:format(name, vim.base64.encode(tostring(value)))
  vim.api.nvim_chan_send(vim.v.stderr, command)
end

set_user_var('is_vim', 'true')

vim.api.nvim_create_autocmd('VimLeavePre', {
  desc = 'Unset user vars',
  group = vim.api.nvim_create_augroup('kickstart-unset-user-vars', { clear = true }),
  pattern = '*',
  callback = function()
    set_user_var('is_vim', nil)
  end,
})
