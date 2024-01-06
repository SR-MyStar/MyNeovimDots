local sections = require("_env").dm_Lualine_Sections

return {
    require(sections .. ".Lualine_z.line_and_column"),
}
