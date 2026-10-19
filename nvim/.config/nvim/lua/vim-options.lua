vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.opt.number = true
vim.diagnostic.config({ virtual_text = true })

vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = "Window left" })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = "Window right" })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = "Window down" })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = "Window up" })
