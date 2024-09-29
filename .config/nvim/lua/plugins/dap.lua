return {
  {
    "mfussenegger/nvim-dap-python",
    config = function()
      require("dap-python").setup("/Users/marcelblijleven/.pyenv/versions/neovim/bin/python")
      require("dap-python").test_runner = "pytest"
    end,
  },
  {
    "theHamsta/nvim-dap-virtual-text",
    opts = {
      virt_text_win_col = 80,
    },
  },
}
