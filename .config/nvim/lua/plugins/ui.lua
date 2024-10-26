return {
  {
    "lukas-reineke/virt-column.nvim",
    opts = {
      char = { "┆" },
      virtcolumn = "128",
      highlight = { "NonText" },
    },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      -- catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
      colorscheme = "catppuccin-frappe",
    },
  },
}
