-- installing the package manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath)then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- require("lazy").setup(plugins, opts)

require "config.plugins"
require "config.options"
require "config.keybindings"
require "config.lsp"

-- plugin configuration
require "config.plugconf.treesitter"
require "config.plugconf.git"
require "config.plugconf.auto-pairs"
require "config.plugconf.lualine"
require("nvim-web-devicons").setup()

require("ibl").setup()

vim.loader.enable()
