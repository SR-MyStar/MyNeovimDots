return {
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
        return opts
    end,
}
