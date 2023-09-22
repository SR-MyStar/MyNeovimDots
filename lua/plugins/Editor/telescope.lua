local TELESCOPE = {}

TELESCOPE.keymap = {
  "nvim-telescope/telescope.nvim",
  keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      {
        "<leader>fp",
        function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
        desc = "Find Plugin File",
      },
  },
}

TELESCOPE.option = {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      mappings = {
        i = {
          ["<esc>"] = require("telescope.actions").close,
        },
      },
      layout_strategy = "horizontal",
      layout_config = { prompt_position = "top" },
      sorting_strategy = "ascending",
      winblend = 0,
    },
  },
}

TELESCOPE.fzf_native = {
  "telescope.nvim",
  keys = {
    -- disable the keymap to grep files
  },
  dependencies = {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
    config = function()
      require("telescope").load_extension("fzf")
    end,
  },
}

TELESCOPE.recent_files = {
  "smartpde/telescope-recent-files",
  event = "VeryLazy",
  config = function()
    require("telescope").setup({
      extensions = {
        recent_files = {
          only_cwd = true,
        },
      },
    })
    require("telescope").load_extension("recent_files")
  end,
}

return {
  TELESCOPE.keymap,
  TELESCOPE.option,
  TELESCOPE.fzf_native,
  TELESCOPE.recent_files,
}
