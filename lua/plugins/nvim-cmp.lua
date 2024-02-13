return {
    {
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
        version = false,
        dependencies = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
--            'hrsh7th/cmp-emoji',
            'hrsh7th/cmp-nvim-lua',
            'saadparwaiz1/cmp_luasnip',
            'windwp/nvim-autopairs',
        },
        opts = function()
            local cmp = require('cmp')
            local defaults = require('cmp.config.default')()
            local luasnip = require('luasnip')

            return {
                sorting = defaults.sorting,
                snippet = {
                    expand = function(args)
                        require('luasnip').lsp_expand(args.body)
                    end,
                },
                mapping = cmp.mapping.preset.insert({
                    ['<CR>'] = cmp.mapping({
                        i = function(fallback)
                            if cmp.visible() and cmp.get_active_entry() then
                                cmp.confirm({ select = false })
                            else
                                fallback()
                            end
                        end,
                        s = cmp.mapping.confirm({
                            select = true,
                            behavior = cmp.ConfirmBehavior.Replace,
                        }),
                    }),
                    ['<S-CR>'] = cmp.mapping.confirm({
                        behavior = cmp.ConfirmBehavior.Replace,
                        select = true,
                    }),
                    ['<C-Space>'] = cmp.mapping.complete(),
                    ['<C-n>'] = cmp.mapping.select_next_item(),
                    ['<C-p>'] = cmp.mapping.select_prev_item(),
                    ['<C-f>'] = cmp.mapping.scroll_docs(4),
                    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                    ['<C-c>'] = function(fallback)
                        cmp.close()
                        fallback()
                    end,
                    ['<Tab>'] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            cmp.select_next_item()
                        elseif luasnip.jumpable(1) then
                            luasnip.jump(1)
                        else
                            fallback()
                        end
                    end, { 'i', 's' }),
                    ['<S-Tab>'] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            cmp.select_prev_item()
                        elseif luasnip.jumpable(-1) then
                            luasnip.jump(-1)
                        else
                            fallback()
                        end
                    end, { 'i', 's' }),
                }),
            }
        end,
        config = function(_, opts)
            require('cmp').setup(opts)
        end,
    },
    {
        "L3MON4D3/LuaSnip",
        dependencies = {
            'rafamadriz/friendly-snippets',
        },
        opts = {
            history = true,
        },
        keys = {
            { 
                '<C-l>',
                function() 
                    require('luasnip').expand_or_jump()
                end,
                mode = { 'i', 's' }
            },
        },
    },
}
