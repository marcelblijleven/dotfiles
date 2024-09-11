return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      -- "nvim-lua/plenary.vim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    opts = function(_, opts)
      table.insert(
        opts.adapters,
        require("neotest-python")({
          runner = "pytest",
          dap = { justMyCode = true },
          python = ".venv/bin/python",
        })
      )
      table.insert(opts.adapters, require("neotest-golang"))
    end,
  },
}
