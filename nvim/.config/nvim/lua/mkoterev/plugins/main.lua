return {
    {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            require('telescope').load_extension('fzf')
        end,
        keys = function()
            return {
                {'<leader>ff', require('telescope.builtin').find_files, desc = 'Find files'},
                {'<leader>fg', require('telescope.builtin').live_grep, desc = 'Find using ripgrep'},
                {'<leader>fb', require('telescope.builtin').buffers, desc = 'Find buffers'},
                {'<leader>fh', require('telescope.builtin').help_tags, desc = 'Find help'}
            } end
    },
    {
        'nvim-tree/nvim-web-devicons'
    },
    {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make'
    },
    {
        'numToStr/Comment.nvim',
    },
    {
        'nvim-treesitter/nvim-treesitter',
        build = function()
            require('nvim-treesitter.install').update({ with_sync = true })()
        end,
        config = function ()
            local configs = require('nvim-treesitter.configs')

            configs.setup({
                ensure_installed = { 'lua', 'vim', 'vimdoc', 'query', 'cpp' },
                sync_install = false,
                highlight = { enable = true },
                indent = { enable = true },
                auto_install = true
            })
        end
    },

    -- Lsp setup
    'L3MON4D3/LuaSnip',
    'neovim/nvim-lspconfig', -- Setup in after/plugin/lsp.lua
    'hrsh7th/cmp-nvim-lsp', -- LSP source for nvim-cmp,
    'hrsh7th/cmp-path',
    'saadparwaiz1/cmp_luasnip', -- Snippets source for nvim-cmp
    'L3MON4D3/LuaSnip', -- Snippets plugin
    {
        'hrsh7th/nvim-cmp', -- Autocompletion plugin,
        config = function()
            local cmp = require('cmp')
            local luasnip = require('luasnip')
            cmp.setup {
                snippet = {
                    expand = function(args)
                        luasnip.lsp_expand(args.body)
                    end,
                },
                sources = {
                    { name = 'nvim_lsp' },
                    { name = 'buffer' },
                    { name = 'path' }
                },

                mapping = cmp.mapping.preset.insert({
                    ['<C-u>'] = cmp.mapping.scroll_docs(-4), -- Up
                    ['<C-d>'] = cmp.mapping.scroll_docs(4), -- Down
                    ['<C-j>'] = cmp.mapping.select_next_item(),
                    ['<C-k>'] = cmp.mapping.select_prev_item(),
                    ['<C-Space>'] = cmp.mapping.complete(),
                    ['<CR>'] = cmp.mapping.confirm {
                        behavior = cmp.ConfirmBehavior.Replace,
                        select = true,
                    },
                }),
            }
        end
    },
}
