return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = true,
        event = "VeryLazy",
        priority = 1000,
        opts = function(_, opts)
            opts.integrations.navic = { enabled = true, custom_bg = "lualine" }
        end,
    },
    {
        "SmiteshP/nvim-navic",
        lazy = true,
        opts = {
            separator = "  ",
            highlight = true,
            depth_limit = 15,
            icons = require("lazyvim.config").icons.kinds,
        },
    },
}
