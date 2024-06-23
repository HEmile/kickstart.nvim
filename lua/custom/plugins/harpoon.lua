return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope.nvim' },
  config = function()
    local harpoon = require 'harpoon'
    local keymap = vim.keymap

    harpoon:setup()
    -- basic telescope configuration
    local conf = require('telescope.config').values
    local function toggle_telescope(harpoon_files)
      local file_paths = {}
      for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
      end

      require('telescope.pickers')
        .new({}, {
          prompt_title = 'Harpoon',
          finder = require('telescope.finders').new_table {
            results = file_paths,
          },
          previewer = conf.file_previewer {},
          sorter = conf.generic_sorter {},
        })
        :find()
    end

    keymap.set('n', '<Leader>a', function()
      harpoon:list():add()
    end, { desc = '[A]dd to harpoon' })
    keymap.set('n', '<Leader>y', function()
      toggle_telescope(harpoon:list())
    end, { desc = 'Open harpoon window' })

    keymap.set('n', '<Leader>u', function()
      harpoon:list():select(1)
    end, { desc = 'Select [1] harpoon' })
    keymap.set('n', '<Leader>i', function()
      harpoon:list():select(2)
    end, { desc = 'Select [2] harpoon' })
    keymap.set('n', '<Leader>o', function()
      harpoon:list():select(3)
    end, { desc = 'Select [3] harpoon' })
    keymap.set('n', '<Leader>p', function()
      harpoon:list():select(4)
    end, { desc = 'Select [4] harpoon' })

    -- Toggle previous & next buffers stored within Harpoon list
    keymap.set('n', '<C-S-P>', function()
      harpoon:list():prev()
    end)
    keymap.set('n', '<C-S-N>', function()
      harpoon:list():next()
    end)
  end,
}
