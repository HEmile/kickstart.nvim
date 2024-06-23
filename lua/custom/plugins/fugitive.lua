return {
  'tpope/vim-fugitive',
  config = function()
    local keymap = vim.keymap

    keymap.set('n', '<Leader>gs', '<Cmd>Git<CR>', { desc = '[G]it [S]tatus' })
    keymap.set('n', '<Leader>gc', '<Cmd>Git commit<CR>', { desc = '[G]it [C]ommit' })
    keymap.set('n', '<Leader>gr', '<Cmd>Git rebase -i<CR>', { desc = '[G]it [R]ebase' })
    keymap.set('n', '<Leader>gd', '<Cmd>Git diff<CR>', { desc = '[G]it [D]iff' })
    keymap.set('n', '<Leader>ga', '<Cmd>Git add .<CR>', { desc = '[G]it [A]dd all' })
    keymap.set('n', '<Leader>gp', '<Cmd>Git push<CR>', { desc = '[G]it [P]ush' })
    keymap.set('n', '<Leader>gi', '<Cmd>e .gitignore<CR>', { desc = 'Open [G]it [I]gnore' })
  end,
}
