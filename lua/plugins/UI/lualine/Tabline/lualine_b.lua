local tabline = require("_env").dm_Lualine_Tabline

return {
    require(tabline .. ".Lualine_b.encoding"),
    require(tabline .. ".Lualine_b.fileformat"),
    require(tabline .. ".Lualine_b.filename"),
}
