return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = true,
        event = "VeryLazy",
        priority = 1000,
        opts = function(_, opts)
            opts.integrations.mason = true
        end,
    },
    {
        "williamboman/mason.nvim",
        optional = true,
        opts = function(_, opts)
            opts.ensure_installed =
                vim.list_extend(opts.ensure_installed or {}, {
                    "bash-language-server",
                    "shellcheck",
                    "shfmt",
                })
        end,
    },
}
