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

end)




