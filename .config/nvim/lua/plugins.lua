--- Plugins using Packer ---

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- colorscheme
  use 'gruvbox-community/gruvbox'
  use 'folke/tokyonight.nvim'

  -- tpope plugins
  use 'tpope/vim-fugitive'
  use 'tpope/vim-surround'
  use 'tpope/vim-commentary'

  -- useful plugins
  use 'airblade/vim-gitgutter'

  -- nvim-tree.lua
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
	'nvim-tree/nvim-web-devicons', -- file icon option
	},
    tag = 'nightly' -- color scheme
    }

end)




