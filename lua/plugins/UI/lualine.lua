local icons = require("lazyvim.config").icons
local Util = require("lazyvim.util")

local LUALINE = {
  options = {
    theme = "catppuccin",
    globalstatus = true,
    always_show_tabs = true,
    disabled_filetypes = {
      statusline = { "dashboard", "alpha" },
      winbar = { "dashboard", "alpha", "neo-tree" },
      tab = { "dashboard", "alpha" },
    },
  },
  -- tabline = {
  --   lualine_a = {
  --     {
  --       "buffers",
  --       symbols = { modified = " ●", alternate_file = "", directory = "" },
  --       filetype_names = {
  --         TelescopePrompt = "󰩉 Telescope",
  --         dashboard = " Dashboard",
  --         packer = "󰃘 Packer",
  --         lazy = "Lazy 󰒲",
  --         fzf = "󱁴 FZF",
  --         alpha = " Alpha",
  --       },
  --       use_mode_colors = true,
  --     },
  --   },
  --   lualine_b = {
  --     { "encoding", icon = "" },
  --     { "fileformat", icons_enabled = true, symbols = { unix = " LF", dos = " CRLF", mac = " CR" } },
  --     {
  --       function()
  --         local file = vim.fn.expand("%:p")
  --         if file == nil or #file == 0 then
  --           return ""
  --         end
  --         local size = vim.fn.getfsize(file)
  --         if size <= 0 then
  --           return ""
  --         end
  --         local suffixes = { "B", "K", "M", "G" }
  --         local i = 1
  --         while size > 1024 and i < #suffixes do
  --           size = size / 1024
  --           i = i + 1
  --         end
  --         local format = i == 1 and "󰈔 %d%s" or "󰈔 %.1f%s"
  --         return string.format(format, size, suffixes[i])
  --       end,
  --     },
  --   },
  --   lualine_c = {
  --     {
  --       "diagnostics",
  --       symbols = {
  --         error = icons.diagnostics.Error,
  --         warn = icons.diagnostics.Warn,
  --         info = icons.diagnostics.Info,
  --         hint = icons.diagnostics.Hint,
  --       },
  --     },
  --   },
  --   lualine_x = {
  --     {
  --       "diff",
  --       symbols = { added = icons.git.added, modified = icons.git.modified, removed = icons.git.removed },
  --     },
  --   },
  --   lualine_y = { "branch" },
  --   lualine_z = { { "tabs", use_mode_colors = true } },
  -- },
  winbar = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {
      { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
      {
        function()
          return "=>"
        end,
        color = { fg = "#C8D3F5" },
        separator = "",
      },
      {
        function()
          return require("nvim-navic").get_location()
        end,
        cond = function()
          return package.loaded["nvim-navic"] and require("nvim-navic").is_available()
        end,
        padding = { left = 0, right = 0 },
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
      {
        "diff",
        symbols = {
          added = icons.git.added,
          modified = icons.git.modified,
          removed = icons.git.removed,
        },
      },
    },
    lualine_y = {},
    lualine_z = {},
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = {
            -- stylua: ignore
            {
              function()
                return require("noice").api.status.command.get()
              end,
              cond = function()
                return package.loaded["noice"] and require("noice").api.status.command.has()
              end,
            },
            -- stylua: ignore
            {
              function()
                return require("noice").api.status.mode.get()
              end,
              cond = function()
                return package.loaded["noice"] and require("noice").api.status.mode.has()
              end,
            },
            -- stylua: ignore
            {
              function()
                return "  " .. require("dap").status()
              end,
              cond = function()
                return package.loaded["dap"] and require("dap").status() ~= ""
              end,
            },
      { require("lazy.status").updates, cond = require("lazy.status").has_updates, color = Util.fg("Special") },
    },
    lualine_c = {},
    lualine_x = {},
    lualine_y = {
      function()
        return string.format(" %d", vim.fn.line("$"))
      end,
    },
    lualine_z = {
      {
        function()
          local cur = vim.fn.line(".")
          local total = vim.fn.line("$")
          if cur == 1 then
            return "󰝦 Top"
          elseif cur == total then
            return "󰪥 Bot"
          elseif math.floor(cur / total * 100) < 13.5 and cur ~= 1 then
            return string.format("󰪞 %2d%%%%", math.floor(cur / total * 100))
          elseif math.floor(cur / total * 100) < 26 and cur ~= 1 then
            return string.format("󰪟 %2d%%%%", math.floor(cur / total * 100))
          elseif math.floor(cur / total * 100) < 38.5 and cur ~= 1 then
            return string.format("󰪠 %2d%%%%", math.floor(cur / total * 100))
          elseif math.floor(cur / total * 100) < 51 and cur ~= 1 then
            return string.format("󰪡 %2d%%%%", math.floor(cur / total * 100))
          elseif math.floor(cur / total * 100) < 63.5 and cur ~= 1 then
            return string.format("󰪢 %2d%%%%", math.floor(cur / total * 100))
          elseif math.floor(cur / total * 100) < 76 and cur ~= 1 then
            return string.format("󰪣 %2d%%%%", math.floor(cur / total * 100))
          elseif math.floor(cur / total * 100) < 100 and cur ~= 1 then
            return string.format("󰪤 %2d%%%%", math.floor(cur / total * 100))
          else
            return string.format("%2d%%%%", math.floor(cur / total * 100))
          end
        end,
        separator = "",
        padding = { left = 1, right = 0 },
      },
      {
        function()
          local line = vim.fn.line(".")
          local col = vim.fn.virtcol(".")
          return string.format(" %d:%-2d", line, col)
        end,
        padding = { left = 1, right = 1 },
      },
    },
  },
  extensions = { "neo-tree", "lazy" },
}

return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = function()
    return LUALINE
  end,
}
