return {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true,
    event = "VeryLazy",
    priority = 1000,
    opts = function(_, opts)
        opts.integrations.treesitter = true
        opts.integrations.treesitter_context = true
    end,
}
