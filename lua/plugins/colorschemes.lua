return {
    {
        "folke/tokyonight.nvim",
        lazy = true,
        priority = 1000,
        opts = {
            transparent = false,
            styles = {
                sidebars = "transparent",
                floats = "transparent",
            }
        },
        config = function(_, opts) 
            vim.cmd[[ colorscheme tokyonight ]]
        end,
    },
}
