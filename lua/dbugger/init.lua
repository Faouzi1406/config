local dap = require('dap')

dap.adapters.lldb = {
  type = 'executable',
  command = '/home/faouzi/.local/llvm/bin/lldb-vscode', -- adjust as needed, must be absolute path
  name = 'lldb'
}

dap.configurations.cpp = {
  {
    name = 'Launch',
    type = 'lldb',
    request = 'launch',
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
    args = {},

    -- 💀
    -- if you change `runInTerminal` to true, you might need to change the yama/ptrace_scope setting:
    --
    --    echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
    --
    -- Otherwise you might get the following error:
    --
    --    Error on launch: Failed to attach to the target process
    --
    -- But you should be aware of the implications:
    -- https://www.kernel.org/doc/html/latest/admin-guide/LSM/Yama.html
    -- runInTerminal = false,
  },
}

dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp

vim.keymap.set('n', '<space>dk', function() dap.continue() end)
vim.keymap.set('n', '<space>dl', function() dap.run_last() end)
vim.keymap.set('n', '<space>b', function() dap.toggle_breakpoint() end)

vim.keymap.set('n', '<space>dk', function() dap.continue() end)
vim.keymap.set('n', '<space>dl', function() dap.run_last() end)
vim.keymap.set('n', '<space>b', function() dap.toggle_breakpoint() end)
