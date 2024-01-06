return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = true,
        event = "VeryLazy",
        priority = 1000,
        opts = function(_, opts)
            opts.integrations.noice = true
        end,
    },
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        view = "cmdline_popup",
        opts = function(_, opts)
            opts.presets.bottom_search = false
            table.insert(opts.routes, {
                filter = {
                    event = "notify",
                    find = "No information available",
                },
                opts = { skip = true },
            })
        end,
    },
}
