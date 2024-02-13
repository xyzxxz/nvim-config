return {
    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'nvim-tree/nvim-web-devicons',
        },
        event = 'VeryLazy',
        opts = {
            icons_enabled = true,
            theme = 'auto',
        },
    },
}
