require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Stuff
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'kyazdani42/nvim-web-devicons'
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

    -- Theme
    --use 'gruvbox-community/gruvbox'
    use 'ellisonleao/gruvbox.nvim'
    use 'mhartington/oceanic-next'
    use 'sainnhe/everforest'
    use 'folke/tokyonight.nvim'

    -- Snippets
    use 'L3MON4D3/LuaSnip'

    -- Comments
    use 'numToStr/Comment.nvim'

    -- TreeSitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end
    }

    -- LSP Setup
    use 'neovim/nvim-lspconfig'
    use 'williamboman/mason.nvim'
    use 'mfussenegger/nvim-jdtls'

    -- Completions
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    -- use 'hrsh7th/cmp-nvim-lua'
    use 'petertriho/cmp-git'
    use 'hrsh7th/nvim-cmp'

    -- Using lsp signature help for overloads
    use 'Issafalcon/lsp-overloads.nvim'

    use 'rhysd/vim-clang-format'
    use 'saadparwaiz1/cmp_luasnip'
end)
