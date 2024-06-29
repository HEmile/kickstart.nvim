return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  init = function()
    vim.cmd.colorscheme 'catppuccin'

    -- You can configure highlights by doing something like:
    vim.cmd.hi 'Comment gui=none'
  end,
  config = function()
    require('catppuccin').setup {
      integrations = {
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = true,
        mini = {
          enabled = true,
          indentscope_color = '',
        },
      },
      flavour = 'frappe',
    }
    vim.keymap.set('n', '<Leader>wd', '<Cmd>colorscheme catppuccin-frappe<CR>', { desc = '[D]ark theme' })
    vim.keymap.set('n', '<Leader>wl', '<Cmd>colorscheme catppuccin-latte<CR>', { desc = '[L]ight theme' })
    -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
  end,
}
