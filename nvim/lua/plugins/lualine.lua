return {
    {
	'nvim-lualine/lualine.nvim',
	options = { theme = 'iceberg_dark' },
	config = function() 
	    require("lualine").setup()
	end
    },
}
