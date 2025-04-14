vim.wo.number = true
vim.wo.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.clipboard = 'unnamedplus'

vim.opt.swapfile = false
vim.opt.backup = false

vim.o.ignorecase = true
vim.o.smartcase = true

vim.opt.updatetime = 200
vim.opt.splitright = true
vim.opt.splitbelow = true

-- adds syntax errors etc
vim.diagnostic.config({ virtual_text = true })

local autocmd = vim.api.nvim_create_autocmd
local yank_group = vim.api.nvim_create_augroup('HighlightYank', {})

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 80,
        })
    end,
})

-- Hide some symbols. For obsidian plugin. TODO: it needs to be loaded BEFORE plugin itself
vim.opt.conceallevel = 2


-- This needs for a 'Pocco81/auto-save.nvim' plugin not conflict with a 'epwalsh/obsidian.nvim' plugin when you undo
vim.cmd[[autocmd TextChanged,FocusLost,BufEnter * if &buftype ==# '' || &buftype == 'acwrite' | silent update | endif]]
