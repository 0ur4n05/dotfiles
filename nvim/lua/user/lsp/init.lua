local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "user.lsp.configs"
require("user.lsp.handlers").setup()
require "user.lsp.null-ls"

-- language server includes 
-- ask me why putting them here and ill come after you
require 'lspconfig'.asm_lsp.setup{}
require 'lspconfig'.bashls.setup{}
require 'lspconfig'.clangd.setup{}
require 'lspconfig'.dockerls.setup{}
require 'lspconfig'.dotls.setup{}
require 'lspconfig'.rust_analyzer.setup{}
require 'lspconfig'.cmake.setup{}
require 'lspconfig'.pyright.setup{}

