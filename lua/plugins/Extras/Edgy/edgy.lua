return {
    "folke/edgy.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
        opts.right, opts.left = opts.left, opts.right
    end,
}
