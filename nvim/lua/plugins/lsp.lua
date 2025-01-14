return {
    {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	---@module "ibl"
	---@type ibl.config
	opts = {},
	config = function()
	    require("ibl").setup()
	end
    },
    {
	"neovim/nvim-lspconfig",
	config = function()
	    local lspconfig = require "lspconfig"
	    lspconfig.clangd.setup{
		    filetypes = { "c", "cpp", "hpp", "tpp", "h"}
	    }
	    lspconfig.asm_lsp.setup{}
	    lspconfig.pyright.setup{}
	    lspconfig.bashls.setup{}
	end
    }, 
    {
	"williamboman/nvim-lsp-installer",
	config = function()
	    vim.diagnostic.config({
		virtual_text = {
		    prefix = '',
		    severity = vim.diagnostic.severity.ERROR,
		},
		signs = true, 
		underline = true,
		update_in_insert = false,
		severity_sort = true,
	    })
	    local signs = { Error = "", Warn = "", Hint = "", Info = "" }	-- fucking signs keeps updating the numerbs fuck that
	    for type, icon in pairs(signs) do
		local hl = "DiagnosticSign" .. type
		vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
	    end
	    require("nvim-lsp-installer").setup {}
	end
    },
    {
	"williamboman/mason.nvim",
	config = function()
	    require("mason").setup()
	end
    },
    { 
	"williamboman/mason-lspconfig.nvim", 
	opts = {
	    ensure_installed = {
		"clangd",
		"bashls",
		"asm_lsp",
		"pyright",
	    },
	},
	config = function()
	end 
    },
    {
	"mfussenegger/nvim-lint",
	config = function()
	end
    },
}

