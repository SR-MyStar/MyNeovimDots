return {
    "folke/noice.nvim",
    event = "VeryLazy",
    view = "cmdline_popup",
    opts = function(_, opts)
        opts.presets.bottom_search = false
        return opts
    end,
}
