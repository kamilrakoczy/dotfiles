if vim.fn.has 'persistent_undo' then
	local prefix = vim.env.XDG_CONFIG_HOME or vim.fn.expand("~/")
	vim.opt.undofile=true
	vim.opt.undodir={ prefix .. "/.nvim/undo" }
end

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
-- switch to new pane on split
vim.opt.splitbelow = true
vim.opt.splitright = true
-- unmap useless stuff
vim.keymap.set('n', 'J', function() end, { silent = true })
vim.keymap.set('n', 'K', function() end, { silent = true })
vim.keymap.set('n', 's', function() end, { silent = true })
-- delete without yanking with x/X
vim.keymap.set('n', 'x', '"_x', { silent = true })
vim.keymap.set('n', 'X', '"_dd', { silent = true })
vim.keymap.set('v', 'x', '"_x', { silent = true })
vim.keymap.set('v', 'X', '"_dd', { silent = true })
-- redo on U
vim.keymap.set('n', 'U', '<C-r><esc>', { silent = true })
-- replace without yanking the replaced text
vim.keymap.set('v', 'p', '"_dP', { silent = true })
-- window management with the alt and ctrl keys
vim.keymap.set('n', '<M-q>', ':close<CR>', { silent = true })
vim.keymap.set('n', '<M-c>', ':split<CR>', { silent = true })
vim.keymap.set('n', '<M-v>', ':vsplit<CR>', { silent = true })
vim.keymap.set('n', '<C-h>', '<C-w>h', { silent = true })
vim.keymap.set('n', '<C-j>', '<C-w>j', { silent = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { silent = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { silent = true })

-- tab management
vim.keymap.set('n', '<C-t>', ':tabnew<CR>', { silent = true })
vim.keymap.set('n', '<C-w>', ':tabclose<CR>', { silent = true })
vim.keymap.set('n', '<C-tab>', ':tabnext<CR>', { silent = true })
vim.keymap.set('n', '<C-S-tab>', ':tabprev<CR>', { silent = true })
-- make < > shifts keep selection
vim.keymap.set('v', '<', '<gv', { silent = true })
vim.keymap.set('v', '>', '>gv', { silent = true })
vim.keymap.set('n', '<leader>q', ':qa<CR>', { silent = true, desc = 'Quit' })
vim.keymap.set('n', '<leader>Q', ':qa!<CR>', { silent = true, desc = 'Force quit' })
vim.keymap.set('n', '<leader>w', ':w<CR>', { silent = true, desc = 'Write current file' })
vim.keymap.set('n', '<leader>W', ':w!<CR>', { silent = true, desc = 'Force write current file' })
vim.keymap.set('n', '<leader><M-w>', ':wa<CR>', { silent = true, desc = 'Write all open files' })
vim.keymap.set('n', '<leader><C-w>', ':w !sudo tee %<CR>', { silent = true, desc = 'Write current file (sudo)' })
vim.keymap.set('n', '<leader>bx', ':bn<CR>:bd#<CR>', { silent = true, desc = 'Close buffer' })
vim.keymap.set('n', '<leader>bX', ':bn<CR>:bd#!<CR>', { silent = true, desc = 'Force close buffer' })
