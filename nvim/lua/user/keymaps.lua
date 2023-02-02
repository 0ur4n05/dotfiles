local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- chadtree -- 
keymap("n", "cc", ":CHADopen<CR>", opts)
 -- terminal
keymap("n", "t", ":ToggleTerm<CR>", opts)
-- 42 header
keymap("n", "std", ":Stdheader<CR>", opts)
keymap("n", "da", ":!date<CR>", opts)

-- Normal --
-- Better window navigation
keymap("n", "<Space>j", "<C-w>h", opts)
keymap("n", "<Space>k", "<C-w>j", opts)
keymap("n", "<Space>l", "<C-w>k", opts)
keymap("n", "<Space>;", "<C-w>l", opts)
keymap("n", "sv", ":vsplit<CR>", opts)
keymap("n", "sh", ":split<CR>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Move text up and down
keymap("v", "<A-k>", ":m .+1<CR>==", opts)
keymap("v", "<A-l>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- adjusting the keymaps
keymap("n", "j", "h", opts)
keymap("n", "k", "j", opts)
keymap("n", "l", "k", opts)
keymap("n", ";", "l", opts)
keymap("v", "j", "h", opts)
keymap("v", "k", "j", opts)
keymap("v", "l", "k", opts)
keymap("v", ";", "l", opts)
