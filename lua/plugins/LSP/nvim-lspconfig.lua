return {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
        opts.inlay_hints.enabled = true
        return opts
    end,
}
