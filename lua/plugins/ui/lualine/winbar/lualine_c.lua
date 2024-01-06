local winbar = require("_env").dm_Lualine_Winbar

return {
    require(winbar .. ".Lualine_c.Nvim-navic.filetype"),
    require(winbar .. ".Lualine_c.Nvim-navic.array"),
    require(winbar .. ".Lualine_c.Nvim-navic.nvim-navic"),
}
