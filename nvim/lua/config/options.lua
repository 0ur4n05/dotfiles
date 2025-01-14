local options = {
	shiftwidth=4,
	autoident=on,			-- automatically ident the current line to the previous line
	autoread=on,			-- if the file has changed neovim changes it in the current buffer
	cident=on,			-- automatically ident c files
	clipboard = "unnamedplus",	-- we wanna save what we copy to the other windows
	cmdheight = 0,			-- we need no padding for terminals
	cursorline=off,			-- dont highlight the current line
	title=true,			-- the title of the screen is the same as the file that we're editing 
	termguicolors=true,		-- use termgui colors
	fileencoding = "utf-8", 
	hlsearch = true,		-- highlight all found
	ignorecase = true,		-- ignore case in search patterns
	swapfile = false,		-- we need no swap file
	wrap = true,			-- display a line
	number = true,			-- we want to see numebrs
	numberwidth = 4, 		-- ok?
	showcmd = false,
	conceallevel = 0,
	ignorecase = true,
	hlsearch = true,
	smartcase = true,
	smartindent = true,
	splitbelow = true,
	splitright = true,
	undofile = true,
	writebackup = false,
	scrolloff = 8,
	sidescrolloff = 8, 
	splitkeep = "cursor",
	switchbuf = "uselast"
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
