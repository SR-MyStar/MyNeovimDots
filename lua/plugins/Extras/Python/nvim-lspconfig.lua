return {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
        opts.servers.ruff_lsp = {
            mason = false,
            autostart = false,
        }
    end,
}
