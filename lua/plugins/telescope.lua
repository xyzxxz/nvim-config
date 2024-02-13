return {
    'nvim-telescope/telescope.nvim',
    cmd = 'Telescope',
    dependencies = {
        'nvim-lua/plenary.nvim',
    },
    keys = {
        {'<localleader>f', '<cmd>Telescope find_files<CR>', desc = 'Find files' },
    },
}
