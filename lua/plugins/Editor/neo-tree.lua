return {
    "nvim-neo-tree/neo-tree.nvim",
    lazy = true,
    event = "VeryLazy",
    opts = function(_, opts)
        opts.window.position = "right"
        opts.window.width = 27
    end,
}
