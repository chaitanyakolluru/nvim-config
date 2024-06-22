local Plugin = { 'Wansmer/treesj' }

Plugin.dependencies = { 'nvim-treesitter/nvim-treesitter' }

function Plugin.config()
  -- For use default preset and it work with dot
  vim.keymap.set('n', '<leader>m', require('treesj').toggle, { desc = "TreeSJ - Toggle" })
  -- For extending default preset with `recursive = true`, but this doesn't work with dot
  vim.keymap.set('n', '<leader>M', function()
    require('treesj').toggle({ split = { recursive = true } })
  end, { desc = "TreeSJ - Toggle Recursive" })
  vim.keymap.set('n', '<leader>s', function()
  end, { desc = "TreeSJ - Toggle Split turned off" })

  require('treesj').setup({
    ---@type boolean Use default keymaps (<space>m - toggle, <space>j - join, <space>s - split)
    use_default_keymaps = true,
    ---@type boolean Node with syntax error will not be formatted
    check_syntax_error = true,
    ---If line after join will be longer than max value,
    ---@type number If line after join will be longer than max value, node will not be formatted
    max_join_length = 2400000000,
    ---Cursor behavior:
    ---hold - cursor follows the node/place on which it was called
    ---start - cursor jumps to the first symbol of the node being formatted
    ---end - cursor jumps to the last symbol of the node being formatted
    ---@type 'hold'|'start'|'end'
    cursor_behavior = 'hold',
    ---@type boolean Notify about possible problems or not
    notify = true,
    ---@type table Presets for languages
    -- langs = {"json"},
    ---@type nil|function Callback for treesj error handler. func (err_text, level, ...other_text)
    on_error = nil,
  })
end

return Plugin
