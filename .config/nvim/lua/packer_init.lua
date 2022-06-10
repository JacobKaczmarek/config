return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    
    use {
            "goolord/alpha-nvim",
            config = function()
                require("plugins/alpha") -- include you config
            end,
        }
    
    use 'christoomey/vim-tmux-navigator'

    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'

    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'

    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    -- Telescope
    use { 'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/plenary.nvim'} }}
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
    use { "nvim-telescope/telescope-file-browser.nvim" }
end)
