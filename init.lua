require("plugins")
require("lsp")
require("cmp_setup")
require("telthescope")
require("colorscheme")
require("ocaml").setup()
require("mason").setup()

-- Neogit
local neogit = require('neogit')
neogit.setup {}

-- Some general settings

-- Turn on relativenumber
vim.cmd(':set relativenumber')

-- Turn on clipboard
vim.cmd(':set clipboard^=unnamed,unnamedplus')
