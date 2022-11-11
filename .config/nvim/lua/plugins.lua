--- Plugins using Packer ---

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Have packer use a popup window
packer.init({
    display = {
	open_fn = function()
	    return require("packer.util").float({ border = "rounded" })
	end,
    },
})

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- colorscheme
  use 'gruvbox-community/gruvbox'
  use 'folke/tokyonight.nvim'
  use 'lunarvim/darkplus.nvim'

  -- tpope plugins
  use 'tpope/vim-fugitive'
  use 'tpope/vim-surround'
  use 'tpope/vim-commentary'
  use 'tpope/vim-rhubarb'

  -- useful plugins
  use 'airblade/vim-gitgutter'
  use 'akinsho/bufferline.nvim'
  use 'akinsho/toggleterm.nvim'

  -- lsp 
  use 'neovim/nvim-lspconfig'
  -- use "williamboman/mason.nvim" -- simple to use language server installer
  -- use "williamboman/mason-lspconfig.nvim" -- simple to use language server installer

  -- cmp plugins
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lua"

  -- nvim-tree plugin
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
	'nvim-tree/nvim-web-devicons', -- file icon option
	},
    tag = 'nightly' -- color scheme
    }

    -- lua line
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

end)

-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	
	-- if PACKER_BOOTSTRAP then
	-- 	require("packer").sync()
	-- end
-- end)

