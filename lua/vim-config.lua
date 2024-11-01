vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set hidden")

vim.keymap.set('n', '<C-b>', '<Cmd>Neotree toggle<CR>')
vim.keymap.set('n', '<Leader>b', ':Telescope buffers<CR>')

vim.g.mapleader = " "
