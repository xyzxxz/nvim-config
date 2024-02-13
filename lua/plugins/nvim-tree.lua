return {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
        "3rd/image.nvim",
        "s1n7ax/nvim-window-picker",
    },
    cmd = "Neotree",
    keys = {
        {
            '<leader>tt',
            function()
                require('neo-tree.command').execute({ toggle = true, dir = vim.loop.cwd() })
            end,
            desc = "Explorer NeoTree (cwd)",
        },
    },
    opts = {
        filesystem = {
            filtered_items = {
                hide_dotfiles = false,
            },
        },
    },
}
