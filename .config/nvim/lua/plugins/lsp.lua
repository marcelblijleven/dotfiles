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
        tailwindcss = {
          root_dir = function(fname)
            local package_json = vim.fs.dirname(vim.fs.find("package.json", { path = fname, upward = true })[1])
            if not package_json then
              return nil
            end
            local file = io.open(package_json .. "/package.json", "r")
            if not file then
              return nil
            end
            local content = file:read("*a")
            file:close()

            if content:match('"tailwindcss"%s*:') then
              return package_json
            else
              return nil
            end
          end,
        },
      },
    },
  },
}
