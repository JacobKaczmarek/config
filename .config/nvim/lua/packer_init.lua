return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'christoomey/vim-tmux-navigator'
  use 'neovim/nvim-lspconfig'
end)
