vim.g.mapleader = ' '
vim.keymap.set({'n', 'x'}, 'd', '"_d')
vim.keymap.set({'n', 'x'}, 'D', '"_D')
vim.keymap.set({'n', 'x'}, 'x', '"_x')
vim.keymap.set({'n', 'x'}, 'c', '"_c')
vim.keymap.set({'n', 'n'}, 'C', '"_C')
vim.keymap.set({'n', 'x'}, '<leader>d', 'd')

vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

vim.keymap.set('n', '<leader>t', '<Cmd>horizontal terminal<CR>i')
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')
vim.keymap.set('t', '<C-r>', 'i<C-r>')
vim.keymap.set('t', '<A-h>', '<C-\\><C-n><C-w>h', { noremap = true, silent = true })
vim.keymap.set('t', '<A-j>', '<C-\\><C-n><C-w>j', { noremap = true, silent = true })
vim.keymap.set('t', '<A-k>', '<C-\\><C-n><C-w>k', { noremap = true, silent = true })
vim.keymap.set('t', '<A-l>', '<C-\\><C-n><C-w>l', { noremap = true, silent = true })

vim.keymap.set('i', '<A-h>', '<C-n><C-w>hi', { noremap = true, silent = true })
vim.keymap.set('i', '<A-j>', '<C-n><C-w>ji', { noremap = true, silent = true })
vim.keymap.set('i', '<A-k>', '<C-n><C-w>ki', { noremap = true, silent = true })
vim.keymap.set('i', '<A-l>', '<C-n><C-w>li', { noremap = true, silent = true })

vim.keymap.set('n', '<A-h>', '<C-w>h', { noremap = true, silent = true })
vim.keymap.set('n', '<A-j>', '<C-w>j', { noremap = true, silent = true })
vim.keymap.set('n', '<A-k>', '<C-w>k', { noremap = true, silent = true })
vim.keymap.set('n', '<A-l>', '<C-w>l', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>e', '<Cmd>Ex<CR>')
vim.keymap.set('n', '<leader>E', '<Cmd>vsplit ' .. vim.fs.dirname(vim.fn.expand('$MYVIMRC')) .. '/lua/valtrois/remap.lua<CR><Cmd>setlocal bufhidden=wipe<CR><Cmd>lcd %:p:h<CR>')
vim.keymap.set('n', '<leader>V', '<Cmd>vsplit ~/zettelkasten/Vim.md<CR><Cmd>setlocal bufhidden=wipe<CR><Cmd>lcd %:p:h<CR>')
