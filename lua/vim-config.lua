vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set hidden")
vim.cmd("set clipboard=unnamed")

vim.g.mapleader = " "
vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true })

-- Yank absolute filepath
vim.keymap.set('n', '<leader>yP', function()
  vim.fn.setreg('+', vim.fn.expand('%:p'))
end, { desc = 'Copy full file path' })

-- Yank relative filepath
vim.keymap.set('n', '<leader>yp', function()
  vim.fn.setreg('+', vim.fn.expand('%'))
end, { desc = 'Copy relative file path' })

-- Terminal toggle
vim.keymap.set('n', '<leader>tt', ':ToggleTerm dir=%:p:h<CR>', { desc = 'Toggle terminal' })
vim.keymap.set('n', '<leader>tf', ':ToggleTerm direction=float dir=%:p:h<CR>', { desc = 'Toggle floating terminal' })
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank({ higroup = "IncSearch", timeout = 200 })
  end,
})
