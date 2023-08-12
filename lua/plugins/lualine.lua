return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = function()
    local icons = require("lazyvim.config").icons

    return {
      options = {
        theme = "auto",
        globalstatus = true,
        always_show_tabs = true,
        disabled_filetypes = { statusline = { "dashboard", "alpha" }, tabline = { "dashboard", "alpha" } },
      },
      tabline = {
        lualine_a = {},
        lualine_b = {
          {
            "buffers",
            symbols = {
              modified = " ●",
              alternate_file = "",
              directory = "",
            },
            filetype_names = {
              TelescopePrompt = "󰩉 Telescope",
              dashboard = " Dashboard",
              packer = "󰃘 Packer",
              lazy = "Lazy 󰒲",
              fzf = "󱁴 FZF",
              alpha = " Alpha",
            },
            use_mode_colors = true,
          },
        },
        lualine_c = {},
        lualine_x = {
          {
            "diff",
            symbols = {
              added = icons.git.added,
              modified = icons.git.modified,
              removed = icons.git.removed,
            },
          },
        },
        lualine_y = { "branch" },
        lualine_z = { { "tabs", use_mode_colors = true } },
      },

      winbar = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
      },

      sections = {
        lualine_a = { "mode" },
        lualine_b = {
          { "fileformat", icons_enabled = true, symbols = { unix = " LF", dos = " CRLF", mac = " CR" } },
        },
        lualine_c = {
          {
            function()
              return require("nvim-navic").get_location()
            end,
            cond = function()
              return package.loaded["nvim-navic"] and require("nvim-navic").is_available()
            end,
          },
        },
        lualine_x = {
          {
            "diagnostics",
            symbols = {
              error = icons.diagnostics.Error,
              warn = icons.diagnostics.Warn,
              info = icons.diagnostics.Info,
              hint = icons.diagnostics.Hint,
            },
          },
        },
        lualine_y = {
          { "encoding", icon = "󰈔" },
        },
        lualine_z = {
          { "progress", icon = "", separator = "", padding = { left = 1, right = 0 } },
          { "location", icon = "", padding = { left = 1, right = 1 } },
        },
      },
      extensions = { "neo-tree", "lazy" },
    }
  end,
}
