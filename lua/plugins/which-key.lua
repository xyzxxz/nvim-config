return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    keys = { "<leader>" },
    opts = {
        plugins = {
            spelling = {
                enabled = true,
                suggestions = 9,
            },
        },
        window = {
            border = "shadow",
            position = "bottom",
            margin = { 0, 1, 0, 1},
            padding = { 1, 2, 1, 2},
        },
    },
}
