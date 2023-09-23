return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = function()
    return {
      options = require("models.Lualine.options"),
      -- tabline = require("models.Lualine.tabline"),
      winbar = require("models.Lualine.winbar"),
      sections = require("models.Lualine.sections"),
      extensions = require("models.Lualine.extensions"),
    }
  end,
}
