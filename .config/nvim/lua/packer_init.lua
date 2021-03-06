return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
            "goolord/alpha-nvim",
            config = function()
                require("plugins/alpha") -- include you config
            end,
    }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icon
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    use 'christoomey/vim-tmux-navigator'

    use 'williamboman/nvim-lsp-installer'
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'jose-elias-alvarez/null-ls.nvim'

    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'

    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'kdheepak/lazygit.nvim'

    use 'folke/trouble.nvim'
    -- Telescope
    use { 'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/plenary.nvim'} }}
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
    use { "nvim-telescope/telescope-file-browser.nvim" }

    -- Colorschemes
    use 'sainnhe/edge'
    use 'christianchiarulli/nvcode-color-schemes.vim'
end)
