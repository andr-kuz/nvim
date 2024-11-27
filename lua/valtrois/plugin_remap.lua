local dap = require('dap')
vim.keymap.set('n', '<leader>db', dap.toggle_breakpoint)

-- local dappyton = require('dap-python')
-- vim.keymap.set('n', '<leader>dpr', dappyton.test_method)
vim.keymap.set('n', '<leader>dbr', dap.continue)
