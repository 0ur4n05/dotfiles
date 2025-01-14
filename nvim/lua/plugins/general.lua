return {
    {"nvim-lua/plenary.nvim"},
    {"nvim-treesitter/nvim-treesitter"},
    {"nvim-tree/nvim-web-devicons"},
    {"folke/todo-comments.nvim"},
    {"RRethy/vim-illuminate"},
    {"nvzone/volt" , lazy = true},
    {
	"nvzone/menu",
	lazy = true
    },
    {
      "nvzone/minty",
      cmd = { "Shades", "Huefy" },
    },
    {
	"sam4llis/nvim-tundra",
	config = function()
	    vim.g.tundra_biome = 'arctic'
	    vim.opt.background = 'dark'
	    vim.cmd('colorscheme tundra')
	end
    }
}
