require("telescope").setup {
  defaults = {
    mappings = {
      i = {
          ["<c-t>"] = open_with_trouble,
          ["<a-t>"] = open_selected_with_trouble,
          ["<a-i>"] = find_files_no_ignore,
          ["<a-h>"] = find_files_with_hidden,
      },
    },
  },

}
