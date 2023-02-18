--- MAPPINGS ---

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

vim.keymap.set('n', ';', ':', { noremap = true })	-- maps semicolon to colon 
vim.keymap.set('n', ':', ';', { noremap = true })	-- maps colon to semicolon 
vim.keymap.set('i', ';', ':', { noremap = true })	-- maps semicolon to colon 
vim.keymap.set('i', ':', ';', { noremap = true })	-- maps colon to semicolon 
vim.keymap.set('i', '(', '()<ESC>hli', { noremap = true }) 
vim.keymap.set('i', '[', '[]<ESC>hli', { noremap = true }) 
vim.keymap.set('i', '{', '{}<ESC>hli', { noremap = true }) 
vim.keymap.set('i', "'", "''<ESC>hli", { noremap = true }) 
vim.keymap.set('i', '"', '""<ESC>hli', {noremap = true}) -- autocomplete double quotes
vim.keymap.set('i', '<', '<><ESC>hli', {noremap = true}) -- autocomplete triangle braces
vim.keymap.set('i', '`', '``<ESC>hli', {noremap = true}) -- autocomplete ticks for code comments

-- Custom keymaps
vim.keymap.set('n', '<leader>b', '<cmd>bN<CR>') -- cycle through buffers
vim.keymap.set('n', '<leader>s', "<cmd>lua<space>require('telescope.builtin').find_files()<CR>", { noremap = true })
vim.keymap.set('v', '<leader>r', '"+y<C-w>l<C-\\><C-N>pi<CR>') -- copy & send visual selection to REPL terminal on left and paste
vim.keymap.set('n', '<leader>r', '"+yy<C-w>l<C-\\><C-N>pi<CR>') -- copy & send single line to REPL terminal on left and paste
vim.keymap.set('n', '<leader><space>', 'i<space><ESC>') -- add space while in normal mode

-- moving lines and visual blocks of lines easily
vim.keymap.set('n', '<A-j>', '<cmd>m+<CR>==', { noremap = true })
vim.keymap.set('n', '<A-k>', '<cmd>m-2<CR>==', { noremap = true })
vim.keymap.set('v', '<A-j>', "<cmd>m<space>'>+1<CR>gv=gv", { noremap = true })
vim.keymap.set('v', '<A-k>', "<cmd>m<space>'<-2<CR>gv=gv", { noremap = true })

-- Window splits
vim.keymap.set('n', '<leader>w', '<cmd>vsplit_f<CR>') -- open new window vertically and go to it
vim.keymap.set('n', '<leader>f', '<cmd>NvimTreeToggle<CR>') -- toggles nvim-tree
vim.keymap.set('n', '<leader>t', '<cmd>ToggleTerm<space>size=10<space>direction=horizontal<CR>')
vim.keymap.set('n', '<leader>T', '<cmd>ToggleTerm<space>size=80<space>direction=vertical<CR>ipython<CR>')

-- Window navigation
vim.keymap.set('', '<C-h>', '<C-w>h<CR>')
vim.keymap.set('', '<C-j>', '<C-w>j<CR>')
vim.keymap.set('', '<C-k>', '<C-w>k<CR>')
vim.keymap.set('', '<C-l>', '<C-w>l<CR>')

-- Resize window splits
vim.keymap.set('', '<C-Left>', '<C-w><') -- resize window width with Ctrl-Left/Right arrow
vim.keymap.set('', '<C-Right>', '<C-w>>')
vim.keymap.set('', '<C-Up>', '<C-w>+')
vim.keymap.set('', '<C-Down>', '<C-w>-')

-- Better terminal navigation
vim.keymap.set("t", "<C-h>", "<C-\\><C-N><C-w>h", { silent = true })
vim.keymap.set("t", "<C-j>", "<C-\\><C-N><C-w>j", { silent = true })
vim.keymap.set("t", "<C-k>", "<C-\\><C-N><C-w>k", { silent = true })
vim.keymap.set("t", "<C-l>", "<C-\\><C-N><C-w>l", { silent = true })

-- Movement around wrapped lines
vim.keymap.set('n', 'j', 'v:count ? "j" : "gj"', { noremap = true, expr = true, desc = 'Move down (including wrapping lines)' })
vim.keymap.set('n', 'k', 'v:count ? "k" : "gk"', { noremap = true, expr = true, desc = 'Move up (including wrapping lines)' })
vim.keymap.set('n', '<Up>', 'v:count ? "k" : "gk"', { noremap = true, expr = true, desc = 'Move up (including wrapping lines)' })
vim.keymap.set('n', '<Down>', 'v:count ? "j" : "gj"', { noremap = true, expr = true, desc = 'Move down (including wrapping lines)' })
vim.keymap.set('i', '<Up>', 'pumvisible() ? "k" : "<C-o>gk"', { noremap = true, expr = true, desc = 'Move up (including wrapping lines)' })
vim.keymap.set('i', '<Down>', 'pumvisible() ? "j" : "<C-o>gj"', { noremap = true, expr = true, desc = 'Move down (including wrapping lines)' })

-- Visual block mode, move blocks up and down
vim.keymap.set("x", "J", ":move '>+1<CR>gv-gv", { noremap = true })
vim.keymap.set("x", "K", ":move '<-2<CR>gv-gv", { noremap = true })
vim.keymap.set("x", "<A-j>", ":move '>+1<CR>gv-gv", { noremap = true })
vim.keymap.set("x", "<A-k>", ":move '<-2<CR>gv-gv", { noremap = true })

-- True-zen.nvim keymaps
vim.keymap.set('n', '<leader>zn', '<cmd>Goyo<CR>', { noremap = true })

-- Startup-nvim bookmarks
-- vim.g.startup_bookmarks = {
--     ['I'] = '~/.config/nvim/init.lua',
--     ['F'] = '~/.config/omf/key_bindings.fish',
--     ['K'] = '~/kungfu-vim.md',
-- }

-- vim.keymap.set('n', '<leader>t', '<cmd>new<space>term://bash<CR><cmd>resize<space>10<CR>')

-- experimental
-- vim.keymap.set('n', '<leader>oi<CR>', '<cmd>e<space>~/.config/nvim/init.lua<CR>', {noremap = true}) -- SPACE oi = open init
-- vim.keymap.set('n', '<leader>op<CR>', '<cmd>e<space>~/.config/nvim/lua/plugins.lua<CR>', {noremap = true}) -- SPACE op = open plugins
-- vim.keymap.set('n', '<leader>ob<CR>', '<cmd>e<space>~/.config/omf/key_bindings.fish<CR>', {noremap = true}) -- SPACE ob = open fish keybindings

-- Visual --
-- Stay in indent mode
-- keymap("v", "<", "<gv", opts)
-- keymap("v", ">", ">gv", opt
