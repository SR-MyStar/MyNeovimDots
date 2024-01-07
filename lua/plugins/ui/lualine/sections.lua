local sections = require("_env").dm_Lualine_Sections

return {
  lualine_a = require(sections .. ".lualine_a"),
  lualine_b = require(sections .. ".lualine_b"),
  lualine_c = require(sections .. ".lualine_c"),
  lualine_x = require(sections .. ".lualine_x"),
  lualine_y = require(sections .. ".lualine_y"),
  lualine_z = require(sections .. ".lualine_z"),
}
