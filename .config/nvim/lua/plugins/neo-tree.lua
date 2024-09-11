return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      position = "right",
    },
    filesystem = {
      filtered_items = {
        hide_dotfiles = false,
        hidy_by_name = {
          ".git",
          ".DS_Store",
          "thumbs.db",
        },
        always_show = {
          ".env",
          ".github",
        },
        never_show = {},
      },
    },
  },
}
