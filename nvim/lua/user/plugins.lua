vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use {"wbthomason/packer.nvim"}
	use {"tpope/vim-fugitive"}		-- allows you to git commands from vim command line
	use {"numToStr/Comment.nvim", config = function() require('Comment').setup()end} 	-- making commenting eazy
	use {"ms-jpq/chadtree"}
	-- fucking unicode support that doesnt work lol
	use {"ryanoasis/vim-devicons"}
	use {"vim-nerdtree-syntax-highlight"}
	use {"adelarsq/vim-emoji-icon-theme"}
	use {"nvim-tree/nvim-web-devicons"}
	use {"NvChad/nvim-colorizer.lua"}
	use {"windwp/nvim-autopairs"}
	-- color schemes
	use {"EdenEast/nightfox.nvim"}
	use {"aktersnurra/no-clown-fiesta.nvim"}
	use {"andreiamatuni/slightlyclownish.nvim"}
	-- integrated terminal
	use {"akinsho/toggleterm.nvim",config = function()require("toggleterm").setup()end}
	-- improving start time
	use {"lewis6991/impatient.nvim"}
	use {"nvim-lualine/lualine.nvim"}
	use {"42Paris/42header"}
	-- only for discord mods OwO
	use {'andweeb/presence.nvim'}
	-- creates missing directories when saving
	use {'jghauser/mkdir.nvim'}
	-- man for nvim
	use {"paretje/nvim-man"}
	-- rust dependency management 
	use {"Saecki/crates.nvim"}
	-- creating these lines that shows the scope of an if or a while lol
	use {"lukas-reineke/indent-blankline.nvim"}
	-- smoth scrolling 
	use {"karb94/neoscroll.nvim" ,config = function()require("neoscroll").setup()end}
	-- snippets
	use {"L3MON4D3/LuaSnip"}
	use {"rafamadriz/friendly-snippets"}
	-- lsp
	use {"neovim/nvim-lspconfig"}
	use {"williamboman/mason.nvim"}
	use {"williamboman/mason-lspconfig.nvim"}
	use {"jose-elias-alvarez/null-ls.nvim"}
	use {"RRethy/vim-illuminate"}
	use {"nvim-lua/plenary.nvim"}
	-- cmp
	use {"hrsh7th/nvim-cmp"}
	use {"hrsh7th/cmp-buffer"}
	use {"hrsh7th/cmp-path"}
	use {"saadparwaiz1/cmp_luasnip"}
	use {"hrsh7th/cmp-nvim-lsp"}
	use {"hrsh7th/cmp-nvim-lua"}
	use {
	  "kyazdani42/blue-moon",
	  config = function()
	    vim.opt.termguicolors = true
	    vim.cmd "colorscheme blue-moon"
	  end
	}
end)
