require("plugins")
require("lsp")
require("cmp_setup")
require("telthescope")
require("colorscheme")
require("keybindings")
require("harpoon")
require("rust")
require('haskell-tools').setup {}
require("haskell")
require("command-completion").setup()
require("ocaml").setup()
require("mason").setup()
require('lualine').setup()
require("dbugger")
require("dapui").setup()

-- Some general settings

-- Turn on relativenumber
vim.cmd(':set relativenumber')

-- Turn on clipboard
vim.cmd(':set clipboard^=unnamed,unnamedplus')

-- ocaml
vim.keymap.set("n", "<space>out", require('ocaml.actions').update_interface_type, { desc = "[O]caml [U]pdate [T]ype" })
