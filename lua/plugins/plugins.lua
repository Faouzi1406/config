return {
	"folke/neodev.nvim",
	"folke/which-key.nvim",
	"neovim/nvim-lspconfig",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/nvim-cmp",
	"rebelot/kanagawa.nvim",
	"nvim-lua/plenary.nvim",
	"tjdevries/ocaml.nvim",
	"nvim-treesitter/nvim-treesitter",
	-- Lazy plugins
	{ "folke/neoconf.nvim", cmd = "Neoconf" },
	{
		"L3MON4D3/LuaSnip",
		-- follow latest release.
		version = "1.*", -- Replace <:tf:> by the latest released major (first number of latest release)
		-- install jsregexp (optional!).
		build = "make install_jsregexp"
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		dependencies = { "nvim-lua/plenary.nvim" }
	},
	"williamboman/mason.nvim",
	"TimUntersberger/neogit",
	"simrat39/rust-tools.nvim",
	"mfussenegger/nvim-dap",
	"ThePrimeagen/harpoon",
	"mrcjkb/haskell-tools.nvim",
	{
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	},
	{
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true }
	},
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{
	  "utilyre/barbecue.nvim",
	  name = "barbecue",
	  version = "*",
	  dependencies = {
	    "SmiteshP/nvim-navic",
	    "nvim-tree/nvim-web-devicons", -- optional dependency
	  },
	  opts = {
	    -- configurations go here
	  },
	},
    	'hrsh7th/cmp-nvim-lua',
     	'hrsh7th/cmp-nvim-lsp-signature-help',
     	'hrsh7th/cmp-vsnip',
     	'hrsh7th/cmp-path',
     	'hrsh7th/cmp-buffer',
     	'hrsh7th/vim-vsnip',
}
