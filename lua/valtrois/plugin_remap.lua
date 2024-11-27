local dap = require('dap')
vim.keymap.set('n', '<leader>db', dap.toggle_breakpoint)

-- local dappyton = require('dap-python')
-- vim.keymap.set('n', '<leader>dpr', dappyton.test_method)
vim.keymap.set('n', '<leader>dr', dap.continue)
vim.keymap.set('n', '<leader>di', dap.step_into)
vim.keymap.set('n', '<leader>do', dap.step_out)
vim.keymap.set('n', '<leader>dn', dap.step_over)
