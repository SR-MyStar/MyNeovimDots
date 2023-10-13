return {
  "SmiteshP/nvim-navic",
  lazy = true,
  opts = function()
    return {
      separator = "  ",
      highlight = true,
      depth_limit = 15,
      icons = require("lazyvim.config").icons.kinds,
    }
  end,
}
