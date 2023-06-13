-- Neogit
local neogit = require('neogit')
neogit.setup {}

function OpenGit()
	neogit.open();
end

OpenGitCommit = function ()
	neogit.open({ "commit" });
end

vim.keymap.set('n', '<space>og', OpenGit, {})
vim.keymap.set('n', '<space>oc', OpenGitCommit, {})

vim.keymap.set('n', '<space>du', require("dapui").open, {})
vim.keymap.set('n', '<space>dc', require("dapui").close, {})
vim.keymap.set('n', '<space>dt', require("dapui").toggle, {})
