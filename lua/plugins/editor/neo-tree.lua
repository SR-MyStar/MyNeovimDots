return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = true,
        event = "VeryLazy",
        priority = 1000,
        opts = function(_, opts)
            opts.integrations.neotree = true
        end,
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        lazy = true,
        event = "VeryLazy",
        opts = function(_, opts)
            opts.window.position = "right"
            opts.window.width = 27
        end,
    },
}
