local sections = require("_env").dm_Lualine_Sections

return {
    require(sections .. ".Lualine_b.Noice.noice_1"),
    require(sections .. ".Lualine_b.Noice.noice_2"),
    require(sections .. ".Lualine_b.Noice.dap"),
    require(sections .. ".Lualine_b.Noice.requires"),
}
