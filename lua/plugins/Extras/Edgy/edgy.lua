return {
    "folke/edgy.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
        opts.right, opts.left = opts.left, opts.right
        return opts
    end,
    keys = function(_, keys)
        keys[1][1], keys[2][1] = keys[2][1], keys[1][1]
    end,
}
