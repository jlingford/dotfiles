--- INIT ---
require('plugins')


--- OPTIONS ---
vim.g.mapleader = " "
vim.o.number = true
vim.o.relativenumber = true
vim.o.cursorline = true
vim.o.ignorecase = true 	-- ignore case in search
vim.o.shiftwidth = 4 		-- size of indent
vim.o.smartindent = true 	-- inserts indents automatically
vim.o.wrap = true 		-- line wrap
--vim.o.wildmode = {'list:longest'} -- command-line completion
vim.o.autoread = true 		-- vim knows what syntax the file is
--vim.o.signcolumn = true 	-- column left of numbers to show errors
vim.o.textwidth = 90 		-- line length above which to break a line
vim.o.spell = true 		-- highlights spelling mistakes


--- MAPPINGS ---
vim.api.nvim_set_keymap(	-- maps semicolon to colon
    "n",
    ";",
    ":",
    { noremap = true }
) 
vim.api.nvim_set_keymap( 	-- maps colon to semicolon
    "n",
    ":",
    ";",
    { noremap = true }
) 
vim.api.nvim_set_keymap(	-- brackets and moves cursor between them
    "i",
    "(",
    "()<ESC>hli",
    { noremap = true }
) 
vim.api.nvim_set_keymap(	-- brackets and moves cursor between them
    "i",
    "[",
    "[]<ESC>hli",
    { noremap = true }
) 
vim.api.nvim_set_keymap(	-- brackets and moves cursor between them
    "i",
    "{",
    "{}<ESC>hli",
    { noremap = true }
) 
vim.api.nvim_set_keymap(	-- quotes and moves cursor between them
    "i",
    "'",
    "''<ESC>hli",
    { noremap = true }
) 



--- Plugin options ---
vim.cmd[[colorscheme gruvbox]]



