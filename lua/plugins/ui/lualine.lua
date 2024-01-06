return {
    "nvim-lualine/lualine.nvim",
    optional = true,
    opts = function(_, opts)
        opts.options = require(require("_env").dm_Lualine .. ".options")
        -- opts.tabline = require(require("_env").dm_Lualine .. ".tabline")
        -- opts.winbar = require(require("_env").dm_Lualine .. ".winbar")
        opts.sections = require(require("_env").dm_Lualine .. ".sections")
        opts.extensions = require(require("_env").dm_Lualine .. ".extensions")
    end,
}
