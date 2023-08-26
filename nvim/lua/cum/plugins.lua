vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use {"wbthomason/packer.nvim"}
  use {"numToStr/Comment.nvim", config = function() require('Comment').setup()end}
  use {"ms-jpq/chadtree"}
	use {"NvChad/nvim-colorizer.lua"}
	use {"windwp/nvim-autopairs"}
  use {"lewis6991/impatient.nvim"}
  use {"nvim-lualine/lualine.nvim"}
	use {"42Paris/42header"}
	use {"paretje/nvim-man"}
  use {"ms-jpq/chadtree"}
  use {"nvim-lua/plenary.nvim"}
  use {"windwp/nvim-autopairs"}
  use {'neovim/nvim-lspconfig'}
  use {'williamboman/nvim-lsp-installer'}
  use {"williamboman/mason.nvim"}
  use {"williamboman/mason-lspconfig.nvim"}
  use {"foxyseta/reddish-fox.nvim"}
end)
