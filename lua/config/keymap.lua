vim.g.mapleader = " "

-- Window navigation
vim.keymap.set('n', '<S-h>', '<C-w>h', { desc = 'Go to left window' })  -- 左のウィンドウへ移動
vim.keymap.set('n', '<S-j>', '<C-w>j', { desc = 'Go to lower window' }) -- 下のウィンドウへ移動
vim.keymap.set('n', '<S-k>', '<C-w>k', { desc = 'Go to upper window' }) -- 上のウィンドウへ移動
vim.keymap.set('n', '<S-l>', '<C-w>l', { desc = 'Go to right window' }) -- 右のウィンドウへ移動
-- Buffer navigation
vim.keymap.set('n', '<leader>h', ':bprev<CR>', { desc = 'Previous buffer' })
vim.keymap.set('n', '<leader>l', ':bnext<CR>', { desc = 'Next buffer' })

-- Neo-tree
vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>')
-- comment out
vim.keymap.set('n', '<C-/>', function() vim.cmd('normal gcc') end, { desc = 'Toggle comment' })
