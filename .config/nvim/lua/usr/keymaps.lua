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

-- Window splits
vim.o.splitbelow = true 	-- opens new window below
vim.o.splitright = true 	-- opens new window to the right, combined it will open new window vertically to the right
vim.keymap.set('n', '<leader>w', '<cmd>vsplit_f<CR>') -- open new window vertically and go to it
vim.keymap.set('n', '<leader>f', '<cmd>NvimTreeToggle<CR>') -- toggles nvim-tree
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

-- experimental
-- vim.keymap.set('n', '<leader>oi<CR>', '<cmd>e<space>~/.config/nvim/init.lua<CR>', {noremap = true}) -- SPACE oi = open init
-- vim.keymap.set('n', '<leader>op<CR>', '<cmd>e<space>~/.config/nvim/lua/plugins.lua<CR>', {noremap = true}) -- SPACE op = open plugins
-- vim.keymap.set('n', '<leader>ob<CR>', '<cmd>e<space>~/.config/omf/key_bindings.fish<CR>', {noremap = true}) -- SPACE ob = open fish keybindings

-- vim.keymap.set('n', '<leader>t', '<cmd>new<space>term://bash<CR><cmd>resize<space>10<CR>')


