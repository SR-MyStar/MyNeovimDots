local tabline = require("_env").dm_Lualine_Tabline

return {
    lualine_a = require(tabline .. ".lualine_a"),
    lualine_b = require(tabline .. ".lualine_b"),
    lualine_c = require(tabline .. ".lualine_c"),
    lualine_x = require(tabline .. ".lualine_x"),
    lualine_y = require(tabline .. ".lualine_y"),
    lualine_z = require(tabline .. ".lualine_z"),
}
