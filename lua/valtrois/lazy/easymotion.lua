return {
  'phaazon/hop.nvim',
  branch = 'v2',
  config = function()
    -- you can configure Hop the way you like here; see :h hop-config
    require('hop').setup()
    vim.keymap.set('n', '<leader><space>s', '<cmd>lua require"hop".hint_char1()<cr>')
    vim.keymap.set('v', '<leader><space>s', '<cmd>lua require"hop".hint_char1()<cr>')
    vim.keymap.set('n', '<leader><space>S', '<cmd>lua require"hop".hint_char2()<cr>')
    vim.keymap.set('v', '<leader><space>S', '<cmd>lua require"hop".hint_char2()<cr>')
    -- keys = 'etovxqpdygfblzhckisuran' 
  end
}
