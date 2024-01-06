local winbar = require("_env").dm_Lualine_Winbar

return {
    require(winbar .. ".Lualine_x.diagnostics"),
    require(winbar .. ".Lualine_x.diff"),
}
