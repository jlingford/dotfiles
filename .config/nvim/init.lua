--- INIT ---

-- plugins require functions
require('usr.options')
require('usr.keymaps')
require('usr.colorscheme')
require('plugins')
require('nvim-tree').setup()
require('lspconfig').pyright.setup{}
require('lspconfig').bashls.setup{}
require('mason').setup()
require('usr.cmp')
require('bufferline').setup{}
require('toggleterm').setup()
require('lualine').setup()


--- Plugin options ---
-- plugins to add airblade/vim-rooter hrsh7th/nvim-cmp neovim/nvim-lspconfig {'nvim-treesitter/nvim-treesitter'}, {'nvim-treesitter/nvim-treesitter-context'}, {'nvim-treesitter/nvim-treesitter-textobjects'}, nvim-lua/plenary.nvim ncm2/ncm2-bufword ncm2/ncm2-path ncm2/ncm2-jedi gaalcaras/ncm-R jalvesaq/Nvim-R -- required for the previous plugin hello worl testinghsome stuff {helld hello world i am james


