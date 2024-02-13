return {
    {
        'neovim/nvim-lspconfig',
        event = { "BufReadPre", "BufNewFile" },
        dependencies = {
            {
                'folke/neoconf.nvim', 
                cmd = 'Neoconf',
                config = false,
                dependencies = { 'nvim-lspconfig' },
            },
            {
                'folke/neodev.nvim', 
                opts = {},
            },
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim',
        },
        opts = {
        },
        config = function()
        end,
    },
    {
        'williamboman/mason.nvim',
        cmd = 'Mason',
        build = ':MasonUpdate',
        opts = {
            ensure_installed = {
                "eslint-lsp",
                "lua-language-server",
            },
            ui = {
                border = 'shadow',
            },
        },
        config = function(_, opts)
            require('mason').setup(opts)
        end,
    },
}
