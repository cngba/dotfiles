-- Save file quickly
vim.keymap.set('n', '<leader>w', ':w<CR>', { desc = 'Save file' })

-- Close file (may require saving)
vim.keymap.set('n', '<leader>q', ':q<CR>', { desc = 'Close file' })

-- Open Neotree the Explorer
vim.keymap.set('n', '<leader>e', ':Neotree toggle<CR>', { desc = 'Toggle Neo-tree' })

