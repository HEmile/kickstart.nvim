-- a comment

local keymap = vim.keymap

-- Map 'jk' to exit insert mode in Neovim
keymap.set('i', 'jk', '<Esc>', { noremap = true, silent = true })

-- Move cursor to the beginning of the current line with 'H'
keymap.set('n', 'H', '^', { noremap = true, silent = true })

-- Move cursor to the end of the current line with 'L'
keymap.set('n', 'L', 'g_', { noremap = true, silent = true })

-- Use Tab to complete
keymap.set('i', '<Tab>', 'pumvisible() ? "<C-y>" : "<Tab>"', { expr = true, noremap = true })
keymap.set('i', '<C-j>', 'pumvisible() ? "<C-p>" : "<S-Tab>"', { expr = true, noremap = true })
keymap.set('i', '<C-k>', 'pumvisible() ? "<C-n>" : "<S-Tab>"', { expr = true, noremap = true })

-- window management
keymap.set('n', '<Leader>wv', '<C-w>v', { desc = 'Split window vertically' })
keymap.set('n', '<Leader>wh', '<C-w>s', { desc = 'Split window horizontally' })
keymap.set('n', '<Leader>we', '<C-w>=', { desc = 'Make splits equal size' })
keymap.set('n', '<Leader>wc', '<cmd>close<CR>', { desc = 'Close current split' })

-- tabs
keymap.set('n', '<Leader>to', '<cmd>tabnew<CR>', { desc = 'Open new tab' })
keymap.set('n', '<Leader>tc', '<cmd>tabclose<CR>', { desc = 'Close current tab' })
keymap.set('n', '<Leader>tn', '<cmd>tabn<CR>', { desc = 'Go to next tab' })
keymap.set('n', '<Leader>tp', '<cmd>tabp<CR>', { desc = 'Go to previous tab' })

-- File explorer
-- keymap.set('n', '<Leader>fo', '<cmd>explore<CR>', { desc = 'Open file explorer' })

-- Diagnostic keymaps
keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

keymap.set('n', '<Leader>ce', '<cmd>Copilot enable<Cr>', { desc = '[E]nable Copilot' })
keymap.set('n', '<Leader>cd', '<cmd>Copilot disable<Cr>', { desc = '[D]isable Copilot' })
