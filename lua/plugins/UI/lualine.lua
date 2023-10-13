local options = require("models.Lualine.options")
local tabline = require("models.Lualine.tabline")
local winbar = require("models.Lualine.winbar")
local sections = require("models.Lualine.sections")
local extensions = require("models.Lualine.extensions")

return {
  "nvim-lualine/lualine.nvim",
  optional = true,
  opts = function(_, opts)
    opts.options = options
    -- opts.tabline = tabline
    -- opts.winbar = winbar
    opts.sections = sections
    opts.extensions = extensions
    return opts
  end,
}
