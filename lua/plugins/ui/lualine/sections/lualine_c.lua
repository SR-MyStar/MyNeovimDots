local sections = require("_env").dm_Lualine_Sections

return {
    require(sections .. ".Lualine_c.has_updates"),
}
