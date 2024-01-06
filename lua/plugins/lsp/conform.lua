return {
    "stevearc/conform.nvim",
    dependencies = "mason.nvim",
    opts = function(_, opts)
        opts.formatters_by_ft = vim.list_extend(opts.formatters_by_ft or {}, {
            sh = { "shfmt", "beautysh" },
            shell = { "shfmt", "beautysh" },
            bash = { "shfmt", "shellharden", "beautysh" },
            csh = { "beautysh" },
            ksh = { "beautysh" },
            zsh = { "beautysh" },
            mksh = { "shfmt" },
        })
    end,
}
