-- configuring the and remaping the normal shit

local opts = { noremap = true, silent = true }

local term_opts = { silent = true }
-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- remaping the change between windows in nvim
-- using alt + i3 keybindings

keymap("n", "<M-j>", "<C-w>h", opts)
keymap("n", "<M-k>", "<C-w>j", opts)
keymap("n", "<M-l>", "<C-w>k", opts)
keymap("n", "<M-;>", "<C-w>l", opts)

-- remapping the split shit 
keymap("n", "<M-n>", ":split<CR>", opts)
keymap("n", "<M-m>", ":vsplit<CR>", opts)	-- vertical split

-- remaping movements keybindings
keymap("n", "l", "<Up>", opts)
keymap("n", "j", "<Left>", opts)
keymap("n", "k", "<Down>", opts)
keymap("n", ";", "<Right>", opts)
keymap("v", "l", "<Up>", opts)
keymap("v", "j", "<Left>", opts)
keymap("v", "k", "<Down>", opts)
keymap("v", ";", "<Right>", opts)

-- 42header
keymap("n", "<M-h>", ":Stdheader<CR>",opts)

-- nvim tree
keymap("n", "<M-n>", ":NvimTreeToggle<CR>",opts)
keymap("n", "<M-b>", ":NvimTreeFocus<CR>",opts)
keymap("n", "<M-f>", ":NvimTreeFindFile<CR>",opts)
-- toggle term
keymap("n", "<M-t>", ":ToggleTerm<CR>",opts)

