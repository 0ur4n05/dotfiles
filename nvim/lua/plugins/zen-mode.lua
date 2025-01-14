return {
    {
	    "folke/zen-mode.nvim",
	    cmd = "ZenMode",
	    opts = {
		    plugins = {
			    gitsigns = true,
			    kitty = { enabled = false, font = "+2" },
		    },
	    },
	    keys = { { "<leader>z", "<cmd>ZenMode<cr>", desc = "Zen Mode" } },
    },
}
