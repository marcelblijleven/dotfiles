return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = false,
  -- ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
    -- completion
    "hrsh7th/nvim-cmp",
    -- Pickers
    "nvim-telescope/telescope.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "personal",
        path = "~/vaults/personal/",
      },
    },
    completion = {
      nvim_cmp = true,
      -- Trigger completion at 2 characters typed
      min_chars = 2,
    },
    -- Custom function for generating a note id
    ---@param title string|?
    ---@return string
    note_id_func = function(title)
      if title ~= nil then
        -- replace any invalid characters in title
        return title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
      else
        local suffix = ""

        -- title is nil, generate random sequence of letters
        for _ = 1, 4 do
          suffix = suffix .. string.char(math.random(65, 90))
        end

        -- Add prefix with current time
        return tostring(os.time()) .. "-" .. suffix
      end
    end,
  },
}
