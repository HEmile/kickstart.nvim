return {
  {
    'nvim-neotest/nvim-nio',
  },
  {
    'mfussenegger/nvim-dap',
    config = function(_, opts)
      local keymap = vim.keymap
      keymap.set('n', '<Leader>db', '<cmd>DapToggleBreakpoint<CR>', { desc = 'Toggle [B]reakpoint' })
      keymap.set('n', '<Leader>dc', '<cmd>DapContinue<CR>', { desc = '[C]ontinue' })
      keymap.set('n', '<Leader>di', '<cmd>DapStepInto<CR>', { desc = 'Step [I]nto' })
      keymap.set('n', '<Leader>do', '<cmd>DapStepOut<CR>', { desc = 'Step [O]ut' })
      keymap.set('n', '<Leader>dv', '<cmd>DapStepOver<CR>', { desc = 'Step o[v]er' })
      keymap.set('n', '<Leader>dt', '<cmd>DapTerminate<CR>', { desc = '[T]erminate' })
    end,
  },
  {
    'mfussenegger/nvim-dap-python',
    ft = 'python',
    dependencies = {
      'mfussenegger/nvim-dap',
      'rcarriga/nvim-dap-ui',
    },
    config = function(_, opts)
      local path = '~/.virtualenvs/debugpy/bin/python'
      require('dap-python').setup(path)

      table.insert(require('dap').configurations.python, {
        type = 'python',
        request = 'launch',
        name = 'Launch current file',
        program = '${file}',
      })

      -- Python specific keymaps
      local keymap = vim.keymap
      keymap.set('n', '<Leader>dr', function()
        require('dap-python').test_method()
      end, { desc = 'Test method' })
      keymap.set('n', '<Leader>dC', function()
        require('dap-python').test_class()
      end, { desc = 'Test class' })
      keymap.set('n', '<Leader>ds', function()
        require('dap-python').debug_selection()()
      end, { desc = 'Debug selection' })
    end,
  },
  {
    'rcarriga/nvim-dap-ui',
    dependencies = {
      'mfussenegger/nvim-dap',
      'nvim-neotest/nvim-nio',
    },
    config = function()
      local dap = require 'dap'
      local dapui = require 'dapui'
      dapui.setup()

      dap.listeners.after.event_initialized['dapui_config'] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated['dapui_config'] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited['dapui_config'] = function()
        dapui.close()
      end
    end,
  },
}
