require("plugins")
require("lsp")
require("cmp_setup")
require("telthescope")
require("colorscheme")
require("keybindings")
require("harpoon")
require("rust")
require("mason").setup()
require('lualine').setup()

-- Some general settings

-- Turn on relativenumber
vim.cmd(':set relativenumber')

-- Turn on clipboard
vim.cmd(':set clipboard^=unnamed,unnamedplus')

vim.opt.completeopt = {'menuone', 'noselect', 'noinsert'}
vim.opt.shortmess = vim.opt.shortmess + { c = true}
vim.api.nvim_set_option('updatetime', 300) 

-- Fixed column for diagnostics to appear
-- Show autodiagnostic popup on cursor hover_range
-- Goto previous / next diagnostic warning / error 
-- Show inlay_hints more frequently 
vim.cmd([[
set signcolumn=yes
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]])
