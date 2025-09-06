vim.keymap.set("i", "{", "{}<Left>")
vim.keymap.set("i", "(", "()<Left>")
-- Neo-tree
vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>')
-- comment out
vim.keymap.set('n', '<C-/>', function() vim.cmd('normal gcc') end, { desc = 'Toggle comment' })
