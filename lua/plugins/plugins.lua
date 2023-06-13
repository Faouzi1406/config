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
	"smolck/command-completion.nvim",
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
	"mfussenegger/nvim-dap",
	{ "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
}
