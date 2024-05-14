-- Example using a list of specs with the default options
vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct
vim.g.maplocalleader = "\\" -- Same for `maplocalleader`

require("lazy").setup({
	{ "folke/lazy.nvim", tag = "stable" },			-- installing the plugin
	{ "nvim-telescope/telescope.nvim" , tag = '0.1.6',
		dependencies = { "nvim-lua/plenary.nvim" }
	},
	{
	    'windwp/nvim-autopairs',
	    event = "InsertEnter",
	    config = true
	    -- use opts = {} for passing setup options
	    -- this is equalent to setup({}) function
	},
	{"/lewis6991/gitsigns.nvim"},
	{
		'numToStr/Comment.nvim',
		lazy = false,
		config = function() 
			require('Comment').setup()
		end
	},
	{"nvim-tree/nvim-web-devicons"},
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		config = function() 
			require('nvim-web-devicons').setup()
		end
	},
	{
		"RRethy/vim-illuminate",
	},
	{
	    'goolord/alpha-nvim',
	    dependencies = {
		'nvim-tree/nvim-web-devicons',
		'nvim-lua/plenary.nvim'
	    },
		config = function ()
			local alpha = require'alpha'
			local dashboard = require'alpha.themes.dashboard'
			dashboard.section.header.val = {

				[[                 __   _      __          __         ___ ]],
				[[ _    _____ ___ / /  (_) ___/ /_ _____ _/ /_ _  ___/__ \]],
				[[| |/|/ /_ // -_) _ \/ / / _  / // / _ `/ /  ' \/ _ \/__/]],
				[[|__,__//__/\__/_.__/_/  \_,_/\_, /\_,_/_/_/_/_/_//_(_)  ]],
				[[                            /___/                       ]],
			}
			dashboard.section.buttons.val = {
				dashboard.button( "e", "  New file" , ":ene <BAR> startinsert <CR>"),
				dashboard.button( "q", "󰅚  Quit NVIM" , ":qa<CR>"),
			}
			local handle = io.popen('fortune')
			local fortune = handle:read("*a")
			handle:close()
			dashboard.section.footer.val = fortune

			dashboard.config.opts.noautocmd = true

			vim.cmd[[autocmd User AlphaReady echo 'ready']]

			alpha.setup(dashboard.config)
		end	
	},
	{"lukas-reineke/indent-blankline.nvim"},
	{"paretje/nvim-man"},
	{"42Paris/42header"},
	{"RaafatTurki/hex.nvim", 
		config = function() 
			require('hex').setup()
		end
	},
	{
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	},
	{ "nvim-treesitter/nvim-treesitter" },
	-- autocomplete is a mistake retard
	{
		"sam4llis/nvim-tundra",
		config = function()
			vim.opt.termguicolors = true
			vim.cmd "colorscheme tundra"
		end
	},
	{
		"folke/todo-comments.nvim",
	},

})
