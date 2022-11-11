--- INIT ---
-- disable netrw for nvim-tree.lua plugin
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.o.termguicolors = true

-- plugins require functions
require('plugins')
require('nvim-tree').setup()
require('lspconfig').pyright.setup{}
require('lspconfig').bashls.setup{}
-- require('cmp')
require('bufferline').setup{}
require('toggleterm').setup()
require('lualine').setup()

--- OPTIONS ---
vim.g.mapleader = " "
vim.o.number = true
vim.o.relativenumber = true
vim.o.cursorline = true
vim.o.ignorecase = true 	-- ignore case in search
vim.o.shiftwidth = 4 		-- size of indent
vim.o.smartindent = true 	-- inserts indents automatically
vim.o.wrap = true 		-- line wrap
vim.o.wildmode = 'longest,full'    -- command-line completion
vim.o.autoread = true 		-- vim knows what syntax the file is
vim.o.signcolumn = 'yes' 	-- column left of numbers to show errors
vim.o.textwidth = 90 		-- line length above which to break a line
vim.o.spell = true 		-- highlights spelling mistakes
vim.o.spelllang = 'en_gb' 	-- english english spell check
vim.g.updatetime = 1000		-- updates the swap file every 1000 ms, important for gitgutter
vim.g.gitgutter_async = 0 	-- gitgutter auto-updates with every edit
vim.g.laststatus = 2 		-- always have statusline on


--- MAPPINGS ---
vim.keymap.set('n', ';', ':', { noremap = true })	-- maps semicolon to colon 
vim.keymap.set('n', ':', ';', { noremap = true })	-- maps colon to semicolon 
vim.keymap.set('i', '(', '()<ESC>hli', { noremap = true }) 
vim.keymap.set('i', '[', '[]<ESC>hli', { noremap = true }) 
vim.keymap.set('i', '{', '{}<ESC>hli', { noremap = true }) 
vim.keymap.set('i', "'", "''<ESC>hli", { noremap = true }) 
vim.keymap.set('i', '"', '""<ESC>hli', {noremap = true}) -- autocomplete double quotes
vim.keymap.set('i', '<', '<><ESC>hli', {noremap = true}) -- autocomplete triangle braces
vim.keymap.set('i', '<tab><tab>', '<Right>', {noremap = true}) -- double tab in insert mode to Right arrow
vim.keymap.set('n', '<leader>b', '<cmd>bN<CR>') -- cycle through buffers
-- vim.keymap.set('n', '<leader>oi<CR>', '<cmd>e<space>~/.config/nvim/init.lua<CR>', {noremap = true}) -- SPACE oi = open init
-- vim.keymap.set('n', '<leader>op<CR>', '<cmd>e<space>~/.config/nvim/lua/plugins.lua<CR>', {noremap = true}) -- SPACE op = open plugins
-- vim.keymap.set('n', '<leader>ob<CR>', '<cmd>e<space>~/.config/omf/key_bindings.fish<CR>', {noremap = true}) -- SPACE ob = open fish keybindings

-- Window splits
vim.o.splitbelow = true 	-- opens new window below
vim.o.splitright = true 	-- opens new window to the right, combined it will open new window vertically to the right
vim.keymap.set('n', '<leader>w', '<cmd>vsplit_f<CR>') -- open new window vertically and go to it
vim.keymap.set('n', '<leader>f', '<cmd>NvimTreeToggle<CR>') -- toggles nvim-tree
-- vim.keymap.set('n', '<leader>t', '<cmd>new<space>term://bash<CR><cmd>resize<space>10<CR>')
vim.keymap.set('n', '<leader>t', '<cmd>ToggleTerm<space>size=10<space>direction=horizontal<CR>')
vim.keymap.set('', '<C-h>', '<C-w>h<CR>')
vim.keymap.set('', '<C-j>', '<C-w>j<CR>')
vim.keymap.set('', '<C-k>', '<C-w>k<CR>')
vim.keymap.set('', '<C-l>', '<C-w>l<CR>')
vim.keymap.set('', '<C-Left>', '<C-w><') -- resize window width with Ctrl-Left/Right arrow
vim.keymap.set('', '<C-Right>', '<C-w>>')

-- Movement around wrapped lines
vim.keymap.set('n', 'j', 'v:count ? "j" : "gj"', { noremap = true, expr = true, desc = 'Move down (including wrapping lines)' })
vim.keymap.set('n', 'k', 'v:count ? "k" : "gk"', { noremap = true, expr = true, desc = 'Move up (including wrapping lines)' })
vim.keymap.set('n', '<Up>', 'v:count ? "k" : "gk"', { noremap = true, expr = true, desc = 'Move up (including wrapping lines)' })
vim.keymap.set('n', '<Down>', 'v:count ? "j" : "gj"', { noremap = true, expr = true, desc = 'Move down (including wrapping lines)' })
vim.keymap.set('i', '<Up>', 'pumvisible() ? "k" : "<C-o>gk"', { noremap = true, expr = true, desc = 'Move up (including wrapping lines)' })
vim.keymap.set('i', '<Down>', 'pumvisible() ? "j" : "<C-o>gj"', { noremap = true, expr = true, desc = 'Move down (including wrapping lines)' })


--- Plugin options ---
-- vim.cmd[[colorscheme gruvbox]]
vim.cmd[[colorscheme tokyonight]]

-- plugins to add airblade/vim-rooter hrsh7th/nvim-cmp neovim/nvim-lspconfig {'nvim-treesitter/nvim-treesitter'}, {'nvim-treesitter/nvim-treesitter-context'}, {'nvim-treesitter/nvim-treesitter-textobjects'}, nvim-lua/plenary.nvim ncm2/ncm2-bufword ncm2/ncm2-path ncm2/ncm2-jedi gaalcaras/ncm-R jalvesaq/Nvim-R -- required for the previous plugin hello worl testinghsome stuff {helld hello world i am james
