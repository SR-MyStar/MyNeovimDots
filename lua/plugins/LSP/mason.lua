return {
    "williamboman/mason.nvim",
    optional = true,
    opts = function(_, opts)
        opts.ensure_installed = vim.list_extend(opts.ensure_installed or {}, {
            "bash-language-server",
            "shellcheck",
            "shfmt",
        })
    end,
}
