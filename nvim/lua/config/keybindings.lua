local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.keymap.set

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("n", "<Space>j", "<C-w>h", opts)
keymap("n", "<Space>k", "<C-w>j", opts)
keymap("n", "<Space>l", "<C-w>k", opts)
keymap("n", "<Space>;", "<C-w>l", opts)
keymap("n", "sv", ":vsplit<CR>", opts)
keymap("n", "sh", ":split<CR>", opts)

-- initing the terminal
keymap("n", "T", ":terminal<CR>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "w", ":bnext<CR>", opts)
keymap("n", "e", ":bprevious<CR>", opts)

-- adjusting the keymaps
keymap("n", "j", "h", opts)
keymap("n", "k", "j", opts)
keymap("n", "l", "k", opts)
keymap("n", ";", "l", opts)
keymap("v", "j", "h", opts)
keymap("v", "k", "j", opts)
keymap("v", "l", "k", opts)
keymap("v", ";", "l", opts)

-- Insert --
-- Press jk fast to exit insert mode 
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv^", opts)
keymap("v", ">", ">gv^", opts)

-- Move text up and down
keymap("v", "<A-k>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<A-l>", ":m '<-2<CR>gv=gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<Space>j", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<Space>k", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<Space>l", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<Space>;", "<C-\\><C-N><C-w>l", term_opts)


-- fucking telescope
keymap("n", "ff", ":Telescope find_files<CR>", opts)
keymap("n", "fg", ":Telescope live_grep<CR>", opts)

vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { noremap = true, silent = true })
vim.keymap.set("n", "<RightMouse>", function()
  vim.cmd.exec '"normal! \\<RightMouse>"'

  local options = vim.bo.ft == "NvimTree" and "nvimtree" or "default"
  require("menu").open(options, { mouse = true })
end, {})
