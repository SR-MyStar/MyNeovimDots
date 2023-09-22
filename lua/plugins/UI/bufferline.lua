return {
  "akinsho/bufferline.nvim",
  after = "catppuccin",
  event = "VeryLazy",
  keys = {
    { "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", desc = "Toggle pin" },
    { "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete non-pinned buffers" },
  },
  opts = {
    highlights = require("catppuccin.groups.integrations.bufferline").get(),
    options = {
      -- stylua: ignore
      close_command = function(n) require("mini.bufremove").delete(n, false) end,
      -- stylua: ignore
      right_mouse_command = function(n) require("mini.bufremove").delete(n, false) end,
      -----------------------------------------
      indicator = { style = "underline" },
      color_icons = false,
      separator_style = "slant",
      -----------------------------------------
      diagnostics = "nvim_lsp",
      always_show_bufferline = true,
      diagnostics_indicator = function(_, _, diag)
        local icons = require("lazyvim.config").icons.diagnostics
        local ret = (diag.error and icons.Error .. diag.error .. " " or "")
          .. (diag.warning and icons.Warn .. diag.warning or "")
          .. (diag.info and icons.Info .. diag.info or "")
          .. (diag.hint and icons.Hint .. diag.hint or "")
        return vim.trim(ret)
      end,
      disabled_filetypes = {
        "dashboard",
        "alpha",
      },
      offsets = {
        {
          filetype = "neo-tree",
          text = "NeoTree",
          highlight = "Directory",
          text_align = "left",
        },
      },
    },
  },
}
