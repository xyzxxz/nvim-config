require('nvim-tree').setup{
  auto_reload_on_write = true,
  sort_by = name,
  view = {
    cursorline = true,
    width = 34,
    side = 'left',
    number = false,
    relativenumber = false,
    signcolumn = 'yes',
    float = {
      enable = false,
      quit_on_focus_loss = true,

    },
  },
  renderer = {
    indent_width = 2,
    icons = {
      webdev_colors = true,
      padding = ' ',
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
        modified = true,
      },
    },
  },
  hijack_directories = {
    enable = true,
    auto_open = true,
  },
  update_focused_file = {
    enable = true,
    update_root = true,
  },
  filters = {
    dotfiles = false,
  },
  git = {
    enable = true,
    ignore = true,
    show_on_dirs = true,
  },
  actions = {
    use_system_clipboard = true,

  },
}
