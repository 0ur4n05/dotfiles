require"nvim-treesitter.configs".setup{
	ensure_installed = {"c", "cpp", "python", "dockerfile", "rust", "bash", "lua"},
	sync_install = false,
	highlight = {
		enable = true,

	}
}
