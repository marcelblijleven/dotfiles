return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ruff = {
          init_options = {
            settings = {
              -- This will make project based pyproject.toml or ruff.toml
              -- have priority over global and/or editor settings
              configurationPreference = "filesystemFirst",
              logLevel = "info",
              organizeImports = true,
            },
          },
        },
        pyright = {
          settings = {
            pyright = {
              -- Only use Ruff's import organizer
              disableOrganizeImports = true,
            },
          },
        },
      },
    },
  },
}
