--  requiring the lsp installer
require("mason").setup()
require("mason-lspconfig").setup{
	ensure_installed = {"clangd", "pyre", "marksman"}
			--  ensure that these lsp servers are installed
}

-- here i require the lsp servers
-- clangd       	C/C++
-- dockerls		Dockerfiles
-- marksman		markdown
-- pylsp		python
-- rust_analyzer	rust

local lspconfig = require "lspconfig"

lspconfig.clangd.setup{
	filetypes = { "c", "cpp", "hpp", "tpp", "h"}

}

lspconfig.pyre.setup{}
lspconfig.marksman.setup{}
