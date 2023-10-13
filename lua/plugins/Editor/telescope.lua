local ICONS = require("models.ICONS")
local TELESCOPE = {}

TELESCOPE.keymap = {
  "nvim-telescope/telescope.nvim",
  keys = function(_, keys)
    vim.list_extend(
      keys,
      {
        {
          "<leader>fi",
          function()
            require("telescope.builtin").builtin()
          end,
          desc = "Find Builtin",
        },
        { "<leader>i", "<leader>fi", desc = "Find Builtin", remap = true },
      }
    )
  end,
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
      theme = "dropdown",
      layout_strategy = "center",
      layout_config = {
        width = 0.7,
        height = 0.8,
        prompt_position = "top",
      },
      sorting_strategy = "ascending",
      prompt_prefix = "  ",
      border = true,
      results_title = false,
      preview = false,
      borderchars = {
        prompt = { "─", "│", " ", "│", "╭", "╮", "│", "│" },
        results = { "─", "│", "─", "│", "├", "┤", "╯", "╰" },
        preview = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
      },
    },
    pickers = ICONS.Telescope,
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

TELESCOPE.file_browser = {
  "nvim-telescope/telescope-file-browser.nvim",
  dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  config = function()
    local fb_actions = require("telescope._extensions.file_browser.actions")
    require("telescope").setup({
      extensions = {
        file_browser = {
          prompt_prefix = " 󰮟 ",
          quiet = true,
          hidden = { file_browser = true, folder_browser = true },
          mappings = {
            i = {
              ["<esc>"] = false,
              ["<A-c>"] = false,
              ["<C-g>"] = false,
              ["<C-e>"] = false,
              ["<C-t>"] = false,
              ["<C-s>"] = false,
              ["<bs>"] = false,

              ["<A-a>"] = fb_actions.create,
              ["<A-S-h>"] = fb_actions.toggle_hidden,
              ["<A-BS>"] = fb_actions.goto_parent_dir,
              ["<A-h>"] = fb_actions.goto_parent_dir,
              ["<A-l>"] = fb_actions.change_cwd,
            },
            n = {
              ["c"] = false,
              ["g"] = false,
              ["e"] = false,
              ["t"] = false,
              ["s"] = false,

              ["<A-a>"] = fb_actions.create,
              ["<S-h>"] = fb_actions.toggle_hidden,
              ["<BS>"] = fb_actions.goto_parent_dir,
              ["h"] = fb_actions.goto_parent_dir,
              ["l"] = fb_actions.change_cwd,
            },
          },
        },
      },
    })
    require("telescope").load_extension("file_browser")
  end,
    -- stylua: ignore
    keys = {
        { "<leader>fd", function() require("telescope").extensions.file_browser.file_browser({ path = require("lazyvim.util").get_root() }) end, desc = "File Browser (root dir)" },
        { "<leader>fD", function() require("telescope").extensions.file_browser.file_browser({ path = vim.loop.cwd() }) end, desc = "File Browser (cwd)" },
    },
}

TELESCOPE.cmdline = {
  "jonarrien/telescope-cmdline.nvim",
  config = function()
    local has_telescope, telescope = pcall(require, "telescope")

    if not has_telescope then
      error("This plugins requires nvim-telescope/telescope.nvim")
    end

    local cmdline = require("cmdline")
    local action = require("cmdline.actions")
    local pickers = require("telescope.pickers")
    local finders = require("telescope.finders")
    local sorter = require("telescope.sorters")
    local entry_display = require("telescope.pickers.entry_display")
    require("cmdline").setup({})
    require("telescope").load_extension("cmdline")
  end,
    -- stylua: ignore
    keys = {
        { ":", function() require("telescope").extensions.cmdline.cmdline() end, desc = "Cmdline" },
    },
}

return {
  TELESCOPE.keymap,
  TELESCOPE.option,
  TELESCOPE.fzf_native,
  TELESCOPE.recent_files,
  TELESCOPE.file_browser,
  -- TELESCOPE.cmdline,
}
