--- INIT ---
-- disable netrw for nvim-tree.lua plugin
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- plugins require functions
require('plugins')
require('nvim-tree').setup()


--- OPTIONS ---
vim.g.mapleader = " "
vim.o.number = true
vim.o.relativenumber = true
vim.o.cursorline = true
vim.o.ignorecase = true 	-- ignore case in search
vim.o.shiftwidth = 4 		-- size of indent
vim.o.smartindent = true 	-- inserts indents automatically
vim.o.wrap = true 		-- line wrap
vim.o.wildmode = 'list,full'    -- command-line completion
vim.o.autoread = true 		-- vim knows what syntax the file is
vim.o.signcolumn = 'yes' 	-- column left of numbers to show errors
vim.o.textwidth = 90 		-- line length above which to break a line
vim.o.spell = true 		-- highlights spelling mistakes
vim.o.spelllang = 'en_gb' 	-- english english spell check
vim.g.updatetime = 1000		-- updates the swap file every 1000 ms, important for gitgutter
vim.g.gitgutter_async = 0 	-- gitgutter auto-updates with every edit


--- MAPPINGS ---
vim.keymap.set('n', ';', ':', { noremap = true })	-- maps semicolon to colon 
vim.keymap.set('n', ':', ';', { noremap = true })	-- maps colon to semicolon 
vim.keymap.set('i', '(', '()<ESC>hli', { noremap = true }) 
vim.keymap.set('i', '[', '[]<ESC>hli', { noremap = true }) 
vim.keymap.set('i', '{', '{}<ESC>hli', { noremap = true }) 
vim.keymap.set('i', "'", "''<ESC>hli", { noremap = true }) 
vim.keymap.set('i', '"', '""<ESC>hli', {noremap = true}) -- autocomplete double quotes
vim.keymap.set('i', '<', '<><ESC>hli', {noremap = true}) -- autocomplete triangle braces

-- Movement around wrapped lines
vim.keymap.set('n', 'j', 'v:count ? "j" : "gj"', { noremap = true, expr = true, desc = 'Move down (including wrapping lines)' })
vim.keymap.set('n', 'k', 'v:count ? "k" : "gk"', { noremap = true, expr = true, desc = 'Move up (including wrapping lines)' })
vim.keymap.set('n', '<Up>', 'v:count ? "k" : "gk"', { noremap = true, expr = true, desc = 'Move up (including wrapping lines)' })
vim.keymap.set('n', '<Down>', 'v:count ? "j" : "gj"', { noremap = true, expr = true, desc = 'Move down (including wrapping lines)' })
vim.keymap.set('i', '<Up>', 'pumvisible() ? "k" : "<C-o>gk"', { noremap = true, expr = true, desc = 'Move up (including wrapping lines)' })
vim.keymap.set('i', '<Down>', 'pumvisible() ? "j" : "<C-o>gj"', { noremap = true, expr = true, desc = 'Move down (including wrapping lines)' })


--- Mappings for netrw ---
vim.g.netrw_liststyle = 3 	-- tree-style folder view
vim.keymap.set("n", "<leader>f", "<cmd>20Vex<CR>") 	-- open vertical split of netrw


--- Plugin options ---
-- vim.cmd[[colorscheme gruvbox]]
vim.cmd[[colorscheme tokyonight]]




-- hello world
